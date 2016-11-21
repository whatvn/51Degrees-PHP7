#include <stdlib.h>
#include <vector>
#include <phpcpp.h>
#include "deviceDetection/pattern/Provider.hpp"
#include "deviceDetection/pattern/Match.hpp"
#include "CMatch.hpp"
#include "CProvider.hpp"

class FiftyOneDegreesPatternV3 : public Php::Base {
private:

public:
    static Php::Value provider_get() {
        string dataFile = Php::ini_get("FiftyOneDegreesPatternV3.data_file").stringValue();
        string static propertiesList = Php::ini_get("FiftyOneDegreesPatternV3.property_list").stringValue();
        int cacheSize = Php::ini_get("FiftyOneDegreesPatternV3.cache_size").numericValue();
        int poolSize = Php::ini_get("FiftyOneDegreesPatternV3.pool_size").numericValue();
        return Php::Object("CProvider", CProvider::instance(dataFile, propertiesList, cacheSize, poolSize));
    }

    FiftyOneDegreesPatternV3() {
    }
    virtual ~FiftyOneDegreesPatternV3() {
    }
};


extern "C" {

    PHPCPP_EXPORT void *get_module() {
        static Php::Extension extension("51Degree", "1.0");
        Php::Class<FiftyOneDegreesPatternV3> fiftyOneDegreesPatternV3("fiftyOneDegreesPatternV3");
        Php::Class<CMatch> cmatch("cmatch");
        Php::Class<CProvider> cprovider("cprovider");
        cprovider.method<&CProvider::getMatch>("getMatch");
        fiftyOneDegreesPatternV3.method<&FiftyOneDegreesPatternV3::provider_get>("provider_get");
        cmatch.method<&CMatch::getValue>("getValue");
        // add all classes to the extension
        extension.add(fiftyOneDegreesPatternV3);
        extension.add(cprovider);
        extension.add(cmatch);
        // add init configuration parameters
        extension.add(Php::Ini("FiftyOneDegreesPatternV3.data_file", "/data/51degrees/51Degrees-LiteV3.2.dat"));
        extension.add(Php::Ini("FiftyOneDegreesPatternV3.property_list",
                "BrowserName,BrowserVersion,"
                "PlatformName,PlatformVersion,"
                "DeviceType,IsTablet,IsMobile,"
                "ScreenPixelsWidth,ScreenPixelsHeight"));
        extension.add(Php::Ini("FiftyOneDegreesPatternV3.cache_size", 1000));
        extension.add(Php::Ini("FiftyOneDegreesPatternV3.pool_size", 10));
        return extension;
    }
}



