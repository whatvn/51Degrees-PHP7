/*
 *  * File:   CMatch.h
 *   * Author: Hung
 *    *
 *     * Created on November 17, 2016, 4:57 PM
 *      */
#include "deviceDetection/pattern/Match.hpp"
#include "phpcpp.h"
#include "include/rapidjson/document.h"

#pragma once

using namespace rapidjson;

/**
 *  *  Class definition
 * have to inherit from class Php::Base
 *   */
class CMatch : public Php::Base {
    
public:

     CMatch(const char* mJson) {
         this->json.Parse(mJson);
    }
    

    virtual ~CMatch() {
        this->json = 0;
    }
    
    Php::Value getValue(Php::Parameters &param) const {
        if (isAllow(param[0])) {
            return this->json[(const char*) param[0]].GetString();
        }
        return "";
    }


    Php::Value getValue(Php::Value &v) const {
        if (isAllow(v)) {
            return this->json[(const char*) v].GetString();
        }
        return "";
    }
    
private:
    Document json;
    const string propertyList = Php::ini_get("FiftyOneDegreesPatternV3.property_list");

    bool isAllow(const char* property) const {
        if (propertyList.find(property) != std::string::npos) {
            return true;
        }
        return false;
    }
};
