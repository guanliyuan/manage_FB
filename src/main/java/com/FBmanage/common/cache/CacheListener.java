package com.FBmanage.common.cache;

import org.apache.log4j.Logger;

public class CacheListener {
    Logger logger = Logger.getLogger("cacheLog");
    private ICacheManager cacheManagerImpl;
    public CacheListener(ICacheManager cacheManagerImpl) {
        this.cacheManagerImpl = cacheManagerImpl;
    }

    public void startListen() {
        new Thread(){
            public void run() {
                while (true) {
                    for(String key : cacheManagerImpl.getAllKeys()) {
                        if (cacheManagerImpl.isTimeOut(key)) {
                            cacheManagerImpl.clearByKey(key);
                            logger.info(key + "缓存被清除");
                        }
                    }
                }
            }
        }.start();

    }
}
