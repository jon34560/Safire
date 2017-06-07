// Copyright (c) 2016 Jon Taylor
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef SAFIRE_CLI_H
#define SAFIRE_CLI_H

#include <iostream>
#include <string>
#include <stdexcept>
#include <vector>
#include <stdlib.h>
#include <stdio.h>
#include <limits.h>
#include <string.h>
#include <assert.h>

class CCLI
{
private:
    //! Whether this private key is valid. We check for correctness when modifying the key
    //! data, so fValid should always correspond to the actual state.
    bool fValid;


public:
    //! Construct an invalid private key.
    CCLI()
    {
    }

    //! Destructor (again necessary because of memlocking).
    ~CCLI()
    {
    }

    void printCommands();
    void processUserInput();
};

#endif // SAFIRE_CLI_H




