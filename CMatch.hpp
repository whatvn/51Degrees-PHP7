/*
 *  * File:   CMatch.h
 *   * Author: Hung
 *    *
 *     * Created on November 17, 2016, 4:57 PM
 *      */
#include "deviceDetection/pattern/Match.hpp"
#include "phpcpp.h"
#include "json11/json11.hpp"

#pragma once

using namespace json11;

/**
 *  *  Class definition
 * have to inherit from class Php::Base
 *   */
class CMatch : public Php::Base {
public:

    CMatch(string mJson) {
        string err;
        this->json = Json::parse(mJson, err);
    }

    virtual ~CMatch() = default;
    
    Php::Value getValue(Php::Parameters &param) const {
        if (isAllow(param[0])) {
            return this->json[(const char*) param[0]].string_value();
        }
        return "";
    }


private:
    Json json;
    string propertyList = Php::ini_get("FiftyOneDegreesPatternV3.property_list");

    bool isAllow(const char* property) const {
        if (propertyList.find(property) != std::string::npos) {
            return true;
        }
        return false;
    }
};
