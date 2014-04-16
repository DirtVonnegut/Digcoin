//
//  Counter.c
//  Digcoin
//
//  Created by Graham Sullivan on 4/16/14.
//  Copyright (c) 2014 Graham Sullivan. All rights reserved.
//

#include <stdio.h>

static int isShown = 0;

int increment_counter(){
    static int co = 1;
    return ++co;
}

int should_show(){
    return isShown;
}

void change_show(){
    if (isShown==0) {
        isShown=1;
    }else{
        isShown=0;
    }
}