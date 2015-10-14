.class public Leu/alebianco/air/extensions/analytics/functions/TrackData;
.super Ljava/lang/Object;
.source "TrackData.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/alebianco/air/extensions/analytics/functions/TrackData$1;,
        Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    return-void
.end method

.method private getProductAt(JLcom/adobe/fre/FREArray;)Lcom/google/analytics/tracking/android/Transaction$Item;
    .locals 12
    .param p1, "i"    # J
    .param p3, "products"    # Lcom/adobe/fre/FREArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREWrongThreadException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p3, p1, p2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v10

    .line 311
    .local v10, "product":Lcom/adobe/fre/FREObject;
    const-string v3, "sku"

    invoke-virtual {v10, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "sku":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v10, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "name":Ljava/lang/String;
    const-string v3, "price"

    invoke-virtual {v10, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 314
    .local v9, "price":Ljava/lang/Double;
    const-string v3, "quantity"

    invoke-virtual {v10, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 318
    .local v11, "quantity":Ljava/lang/Long;
    :try_start_0
    const-string v3, "category"

    invoke-virtual {v10, v3}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 323
    .local v7, "category":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 324
    .local v0, "builder":Lcom/google/analytics/tracking/android/Transaction$Item$Builder;
    if-eqz v7, :cond_0

    .line 325
    invoke-virtual {v0, v7}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->setProductCategory(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    .line 327
    :cond_0
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->build()Lcom/google/analytics/tracking/android/Transaction$Item;

    move-result-object v3

    return-object v3

    .line 319
    .end local v0    # "builder":Lcom/google/analytics/tracking/android/Transaction$Item$Builder;
    .end local v7    # "category":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v8, v3

    .line 320
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7    # "category":Ljava/lang/String;
    goto :goto_0
.end method

.method private trackEvent(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 95
    :try_start_0
    const-string v6, "category"

    invoke-virtual {p3, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "category":Ljava/lang/String;
    const-string v6, "action"

    invoke-virtual {p3, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    :try_start_1
    const-string v6, "label"

    invoke-virtual {p3, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 114
    .local v4, "label":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v6, "value"

    invoke-virtual {p3, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 122
    .local v5, "value":Ljava/lang/Long;
    :goto_1
    invoke-virtual {p2, v1, v0, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v3

    .line 123
    .local v3, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "event"

    invoke-virtual {p2, v6, v3}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    const/4 v6, 0x0

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Long;
    :goto_2
    return-object v6

    .line 97
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v6, "ArgumentError"

    const/4 v7, 0x0

    const-string v8, "Unable to read a property on method \'%s:%s\'."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8, v9}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_2

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "category":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 107
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v4, 0x0

    .restart local v4    # "label":Ljava/lang/String;
    goto/16 :goto_0

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 116
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const/4 v5, 0x0

    .restart local v5    # "value":Ljava/lang/Long;
    goto/16 :goto_1
.end method

.method private trackException(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 134
    :try_start_0
    const-string v4, "fatal"

    invoke-virtual {p3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .local v2, "fatal":Ljava/lang/Boolean;
    :try_start_1
    const-string v4, "description"

    invoke-virtual {p3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 151
    .local v0, "description":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2, v0, v4}, Lcom/google/analytics/tracking/android/Tracker;->constructException(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 152
    .local v3, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "exception"

    invoke-virtual {p2, v4, v3}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    const/4 v4, 0x0

    .end local v0    # "description":Ljava/lang/String;
    .end local v2    # "fatal":Ljava/lang/Boolean;
    .end local v3    # "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v4

    .line 135
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v5, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {p1, v4, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string v4, "ArgumentError"

    const-string v5, "Unable to read a property on method \'%s:%s\'."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v8, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    goto :goto_1

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fatal":Ljava/lang/Boolean;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 145
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v5, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {p1, v4, v5, v6}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    const/4 v0, 0x0

    .restart local v0    # "description":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private trackSocial(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 11
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 205
    :try_start_0
    const-string v5, "network"

    invoke-virtual {p3, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "network":Ljava/lang/String;
    const-string v5, "action"

    invoke-virtual {p3, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    :try_start_1
    const-string v5, "content"

    invoke-virtual {p3, v5}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 223
    .local v1, "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v4, v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 224
    .local v3, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "social"

    invoke-virtual {p2, v5, v3}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    const/4 v5, 0x0

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "network":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 207
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v6, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p1, v5, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const-string v5, "ArgumentError"

    const/4 v6, 0x0

    const-string v7, "Unable to read a property on method \'%s:%s\'."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    goto :goto_1

    .line 216
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "network":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 217
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v5, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v6, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {p1, v5, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const/4 v1, 0x0

    .restart local v1    # "content":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private trackTiming(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 9
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 165
    :try_start_0
    const-string v0, "category"

    invoke-virtual {p3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "category":Ljava/lang/String;
    const-string v0, "interval"

    invoke-virtual {p3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 175
    .local v8, "interval":Ljava/lang/Long;
    :try_start_1
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 184
    .local v4, "name":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v0, "label"

    invoke-virtual {p3, v0}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 192
    .local v5, "label":Ljava/lang/String;
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 193
    .local v7, "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "timing"

    invoke-virtual {p2, v0, v7}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 195
    const/4 v0, 0x0

    .end local v1    # "category":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    .end local v7    # "hit":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "interval":Ljava/lang/Long;
    :goto_2
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 168
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v1, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v0, v1, v2}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const-string v0, "ArgumentError"

    const/4 v1, 0x0

    const-string v2, "Unable to read a property on method \'%s:%s\'."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v0

    goto :goto_2

    .line 176
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v1    # "category":Ljava/lang/String;
    .restart local v8    # "interval":Ljava/lang/Long;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 177
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v2, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v0, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const/4 v4, 0x0

    .restart local v4    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 185
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 186
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-object v0, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v2, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .end local v6    # "e":Ljava/lang/Exception;
    aput-object v6, v3, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {p1, v0, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const/4 v5, 0x0

    .restart local v5    # "label":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private trackTransaction(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 23
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    .line 241
    :try_start_0
    const-string v17, "id"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "id":Ljava/lang/String;
    const-string v17, "cost"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 243
    .local v6, "cost":Ljava/lang/Double;
    const-string v17, "products"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v13

    check-cast v13, Lcom/adobe/fre/FREArray;

    .line 244
    .local v13, "products":Lcom/adobe/fre/FREArray;
    invoke-virtual {v13}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 253
    .local v12, "numProducts":Ljava/lang/Long;
    :try_start_1
    const-string v17, "affiliation"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 262
    .local v4, "affiliation":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v17, "shipping"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v14

    .line 271
    .local v14, "shipping":Ljava/lang/Double;
    :goto_1
    :try_start_3
    const-string v17, "tax"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v15

    .line 280
    .local v15, "tax":Ljava/lang/Double;
    :goto_2
    new-instance v5, Lcom/google/analytics/tracking/android/Transaction$Builder;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-long v0, v0

    move-wide/from16 v17, v0

    move-object v0, v5

    move-object v1, v10

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/Transaction$Builder;-><init>(Ljava/lang/String;J)V

    .line 281
    .local v5, "builder":Lcom/google/analytics/tracking/android/Transaction$Builder;
    if-eqz v4, :cond_0

    .line 282
    invoke-virtual {v5, v4}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setAffiliation(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;

    .line 283
    :cond_0
    if-eqz v14, :cond_1

    .line 284
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-long v0, v0

    move-wide/from16 v17, v0

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setShippingCostInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;

    .line 285
    :cond_1
    if-eqz v15, :cond_2

    .line 286
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-long v0, v0

    move-wide/from16 v17, v0

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setShippingCostInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;

    .line 288
    :cond_2
    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/Transaction$Builder;->build()Lcom/google/analytics/tracking/android/Transaction;

    move-result-object v16

    .line 291
    .local v16, "transaction":Lcom/google/analytics/tracking/android/Transaction;
    const-wide/16 v8, 0x0

    .local v8, "i":J
    :goto_3
    :try_start_4
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v8, v17

    if-gez v17, :cond_3

    .line 292
    move-object/from16 v0, p0

    move-wide v1, v8

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->getProductAt(JLcom/adobe/fre/FREArray;)Lcom/google/analytics/tracking/android/Transaction$Item;

    move-result-object v11

    .line 293
    .local v11, "item":Lcom/google/analytics/tracking/android/Transaction$Item;
    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Transaction;->addItem(Lcom/google/analytics/tracking/android/Transaction$Item;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 291
    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    goto :goto_3

    .line 245
    .end local v4    # "affiliation":Ljava/lang/String;
    .end local v5    # "builder":Lcom/google/analytics/tracking/android/Transaction$Builder;
    .end local v6    # "cost":Ljava/lang/Double;
    .end local v8    # "i":J
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "item":Lcom/google/analytics/tracking/android/Transaction$Item;
    .end local v12    # "numProducts":Ljava/lang/Long;
    .end local v13    # "products":Lcom/adobe/fre/FREArray;
    .end local v14    # "shipping":Ljava/lang/Double;
    .end local v15    # "tax":Ljava/lang/Double;
    .end local v16    # "transaction":Lcom/google/analytics/tracking/android/Transaction;
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 246
    .local v7, "e":Ljava/lang/Exception;
    sget-object v17, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v18, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    const-string v17, "ArgumentError"

    const/16 v18, 0x0

    const-string v19, "Unable to read a property on method \'%s:%s\'."

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    .line 304
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v17

    .line 254
    .restart local v6    # "cost":Ljava/lang/Double;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v12    # "numProducts":Ljava/lang/Long;
    .restart local v13    # "products":Lcom/adobe/fre/FREArray;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 255
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v17, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v18, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    const/4 v4, 0x0

    .restart local v4    # "affiliation":Ljava/lang/String;
    goto/16 :goto_0

    .line 263
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v17

    move-object/from16 v7, v17

    .line 264
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v17, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v18, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v14, 0x0

    .restart local v14    # "shipping":Ljava/lang/Double;
    goto/16 :goto_1

    .line 272
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v17

    move-object/from16 v7, v17

    .line 273
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v17, Leu/alebianco/air/extensions/utils/LogLevel;->INFO:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v18, "Unable to read a property, falling back to default value. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    const/4 v15, 0x0

    .restart local v15    # "tax":Ljava/lang/Double;
    goto/16 :goto_2

    .line 295
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "builder":Lcom/google/analytics/tracking/android/Transaction$Builder;
    .restart local v8    # "i":J
    .restart local v16    # "transaction":Lcom/google/analytics/tracking/android/Transaction;
    :catch_4
    move-exception v17

    move-object/from16 v7, v17

    .line 296
    .restart local v7    # "e":Ljava/lang/Exception;
    sget-object v17, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v18, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    const-string v17, "ArgumentError"

    const/16 v18, 0x0

    const-string v19, "Unable to read a property on method \'%s:%s\'."

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v17

    goto/16 :goto_4

    .line 302
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendTransaction(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 304
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method private trackView(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "tracker"    # Lcom/google/analytics/tracking/android/Tracker;
    .param p3, "data"    # Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    :try_start_0
    const-string v2, "screen"

    invoke-virtual {p3, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    .local v1, "screen":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    .end local v1    # "screen":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v3, "Unable to read a property. (Exception:[name:%s, reason:%s, method:%s:%s])"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x3

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v2, v3, v4}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v2, "ArgumentError"

    const-string v3, "Unable to read a property on method \'%s:%s\'."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v7, v3, v4}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "ArgumentError"

    .line 25
    const/4 v2, 0x0

    .line 29
    .local v2, "result":Lcom/adobe/fre/FREObject;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 39
    .local v4, "trackingId":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 47
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v3

    .line 49
    .local v3, "tracker":Lcom/google/analytics/tracking/android/Tracker;
    aget-object v0, p2, v8

    .line 51
    .local v0, "data":Lcom/adobe/fre/FREObject;
    sget-object v6, Leu/alebianco/air/extensions/analytics/functions/TrackData$1;->$SwitchMap$eu$alebianco$air$extensions$analytics$functions$TrackData$HitType:[I

    invoke-static {v5}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->valueOf(Ljava/lang/String;)Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;

    move-result-object v7

    invoke-virtual {v7}, Leu/alebianco/air/extensions/analytics/functions/TrackData$HitType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 65
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->WARN:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Hit type not recognized: {0}"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v2

    .line 68
    .end local v0    # "data":Lcom/adobe/fre/FREObject;
    .end local v3    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    .end local v4    # "trackingId":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 30
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 31
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Unable to read the \'trackingId\' parameter. [Exception:(type:%s, method:%s)]."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const-string v6, "ArgumentError"

    const-string v6, "Unable to read the \'trackingId\' parameter on method \'%s\'."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v10, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "trackingId":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 41
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v6, Leu/alebianco/air/extensions/utils/LogLevel;->FATAL:Leu/alebianco/air/extensions/utils/LogLevel;

    const-string v7, "Unable to read the \'type\' parameter. [Exception:(type:%s, method:%s)]."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {p1, v6, v7, v8}, Leu/alebianco/air/extensions/utils/FREUtils;->logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-string v6, "ArgumentError"

    const-string v6, "Unable to read the \'type\' parameter on method \'%s\'."

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/alebianco/air/extensions/utils/FREUtils;->stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v10, v6, v7}, Leu/alebianco/air/extensions/utils/FREUtils;->createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lcom/adobe/fre/FREObject;
    .restart local v3    # "tracker":Lcom/google/analytics/tracking/android/Tracker;
    .restart local v5    # "type":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackView(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackEvent(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackException(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackTiming(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto :goto_0

    .line 61
    :pswitch_4
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackSocial(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto/16 :goto_0

    .line 63
    :pswitch_5
    invoke-direct {p0, p1, v3, v0}, Leu/alebianco/air/extensions/analytics/functions/TrackData;->trackTransaction(Lcom/adobe/fre/FREContext;Lcom/google/analytics/tracking/android/Tracker;Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    goto/16 :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
