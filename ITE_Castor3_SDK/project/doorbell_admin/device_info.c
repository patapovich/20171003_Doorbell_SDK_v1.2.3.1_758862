﻿#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "doorbell.h"

DeviceInfo theCenterInfo;
DeviceInfo theDeviceInfo;
DeviceInfo theLobbyInfo;

static bool devInfoInEngineerMode = false;

void DeviceInfoInit(void)
{
    bool saveCfg = false;
    char* buf;

    AddressBookGetCenterInfo(&theCenterInfo);

    if (theConfig.area[0] && theConfig.building[0] && theConfig.unit[0] && theConfig.floor[0] && theConfig.room[0] && theConfig.ext[0])
    {
        buf = AddressBookGetDeviceIP(theConfig.area, theConfig.building, theConfig.unit, theConfig.floor, theConfig.room, theConfig.ext);
        if (buf)
        {
            if (!theConfig.dhcp && strcmp(buf, theConfig.ipaddr))
            {
                printf("reset %s-%s-%s-%s-%s-%s ip to %s...\n", theConfig.area, theConfig.building, theConfig.unit, theConfig.floor, theConfig.room, theConfig.ext, buf);
                strcpy(theConfig.ipaddr, buf);
                saveCfg = true;
            }
            free(buf);
        }
    }
    else if (!theConfig.dhcp)
    {
        devInfoInEngineerMode = true;
    }

    AddressBookGetDeviceInfo(&theDeviceInfo, theConfig.ipaddr);

    buf = AddressBookGetGateway(&theDeviceInfo);
    if (buf)
    {
        if (!theConfig.dhcp && strcmp(buf, theConfig.gw))
        {
            printf("reset %s-%s-%s-%s-%s-%s gateway to %s...\n", theConfig.area, theConfig.building, theConfig.unit, theConfig.floor, theConfig.room, theConfig.ext, buf);
            strcpy(theConfig.gw, buf);
            saveCfg = true;
        }
        free(buf);
    }

    buf = AddressBookGetNetMask(&theDeviceInfo);
    if (buf)
    {
        if (!theConfig.dhcp && strcmp(buf, theConfig.netmask))
        {
            printf("reset %s-%s-%s-%s-%s-%s netmask to %s...\n", theConfig.area, theConfig.building, theConfig.unit, theConfig.floor, theConfig.room, theConfig.ext, buf);
            strcpy(theConfig.netmask, buf);
            saveCfg = true;
        }
        free(buf);
    }

    AddressBookGetLobbyInfoArray(&theLobbyInfo, 1);
    if (saveCfg)
        ConfigSave();
}

void DeviceInfoInitByDhcp(char* ip)
{
    if (theConfig.area[0] && theConfig.building[0] && theConfig.unit[0] && theConfig.floor[0] && theConfig.room[0] && theConfig.ext[0])
    {
        theDeviceInfo.type = DEVICE_MANAGER;
        strcpy(theDeviceInfo.area, theConfig.area);
        strcpy(theDeviceInfo.building, theConfig.building);
        strcpy(theDeviceInfo.unit, theConfig.unit);
        strcpy(theDeviceInfo.floor, theConfig.floor);
        strcpy(theDeviceInfo.room, theConfig.room);
        strcpy(theDeviceInfo.ext, theConfig.ext);
        strcpy(theDeviceInfo.ip, ip);
    }
    else
    {
        AddressBookGetDeviceInfo(&theDeviceInfo, ip);
        devInfoInEngineerMode = true;
    }
}

bool DeviceInfoIsInEngineerMode(void)
{
    return devInfoInEngineerMode;
}