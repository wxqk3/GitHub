/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   bdfhdc.c
 * Author: Brian
 *
 * Created on January 23, 2017, 8:50 PM
 */

#include <stdio.h>
#include <stdlib.h>

void bdfhdcFirstSentence();
void bdfhdcSecondSentence();

int main(int argc, char** argv) {

    bdfhdcFirstSentence();
    bdfhdcSecondSentence();
    
    return (EXIT_SUCCESS);
    
}

void bdfhdcFirstSentence(){
    
    printf("Parallel lines have a lot in common.");
    
}

void bdfhdcSecondSentence(){
    
    printf("It's a shame they'll never meet.");
    
}