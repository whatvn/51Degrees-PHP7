/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include "pattern/Match.hpp"


/* 
 * File:   CMatch.h
 * Author: Hung
 *
 * Created on November 17, 2016, 4:57 PM
 */

#pragma once

/**
 *  Class definition
 */
class CMatch : public Match, Php::Base {
    friend class FiftyOneDegreesPatternV3;
public:

    /**
     *  Constructor and destructor
     */
    CMatch() {
    }

    virtual ~CMatch() {
    }

    Php::Value getValue(Php::Parameters &param) {
        return getValue((const char*) param[0]);
    }

    /**
     *  Cast to a string
     *  @return const char *
     */
    const char *__toString() const {
        return "this is the child";
    }
};

