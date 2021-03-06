﻿using Nethereum.Web3;
using Nethereum.Web3.Accounts.Managed;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApiLogger.Functions.Default
{
    public static class DefaultWeb3
    {

        public static Web3 InitializeWeb3()
        {
            var web3 = new Web3();

            return web3;
        }

        public static Web3 InitializeWeb3(string address, string password)
        {
            var account = new ManagedAccount(address, password);

            var web3 = new Web3(account);

            return web3;
        }
    }
}