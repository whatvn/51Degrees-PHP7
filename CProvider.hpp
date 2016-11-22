/* 
 * File:   CProvider.hpp
 * Author: Hung
 *
 * Created on November 18, 2016, 12:06 PM
 */
#include "deviceDetection/pattern/Provider.hpp"
#include "CMatch.hpp"

#pragma once

/**
 *  *  Class definition
 * have to inherit from class Php::Base
 *   */

class CProvider : public Php::Base {
public:

    static CProvider* instance(std::string dataFile, std::string propertiesList, int cacheSize, int poolSize) {
        if (!s_instance) {
            s_instance = new CProvider(dataFile, propertiesList, cacheSize, poolSize);
        }
        return s_instance;
    }

    virtual ~CProvider() {
        delete this->provider;
    }

    Php::Value getMatch(Php::Parameters &param) const {
        Php::Value cMatch;
        cMatch = Php::Object("CMatch", new CMatch((const char*) getMatchJson(param[0]).c_str()));
        return cMatch;
    }

private:

    static CProvider* s_instance;
    Provider *provider;

    string getMatchJson(Php::Value &v) const {
        return this->provider->getMatchJson((const char*) v);
    }

    CProvider(std::string dataFile, std::string propertiesList, int cacheSize, int poolSize) {
        provider = new Provider(dataFile, propertiesList, cacheSize, poolSize);
    };
};

CProvider* CProvider::s_instance = 0;


