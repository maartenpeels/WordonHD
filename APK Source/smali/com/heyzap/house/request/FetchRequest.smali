.class public Lcom/heyzap/house/request/FetchRequest;
.super Ljava/lang/Object;
.source "FetchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/request/FetchRequest$Factory;,
        Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;
    }
.end annotation


# static fields
.field private static gameOrientation:Ljava/lang/String;

.field private static host:Ljava/lang/String;


# instance fields
.field private additionalParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private campaignId:Ljava/lang/Integer;

.field private creativeId:Ljava/lang/Integer;

.field private creativeTypes:Ljava/lang/Integer;

.field private debugEnabled:Ljava/lang/Boolean;

.field private endpoint:Ljava/lang/String;

.field private isImmediate:Ljava/lang/Boolean;

.field private maxCount:I

.field private randomStrategyEnabled:Ljava/lang/Boolean;

.field private rejectedImpressionId:Ljava/lang/String;

.field private remainingTries:I

.field private request:Lcom/heyzap/house/request/AdRequest;

.field private response:Lorg/json/JSONObject;

.field private responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

.field private secure:Ljava/lang/Boolean;

.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "ads.heyzap.com"

    sput-object v0, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Boolean;Lcom/heyzap/house/request/AdRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/heyzap/house/request/FetchRequest;->response:Lorg/json/JSONObject;

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    .line 42
    const-string v0, "/in_game_api/ads/fetch_ad"

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->endpoint:Ljava/lang/String;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->secure:Ljava/lang/Boolean;

    .line 44
    iput-object v3, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/lang/Integer;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    .line 53
    iput v2, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    .line 61
    iput-object p2, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/lang/Integer;

    .line 63
    iput-object p3, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    .line 64
    iput-object p4, p0, Lcom/heyzap/house/request/FetchRequest;->request:Lcom/heyzap/house/request/AdRequest;

    .line 65
    return-void
.end method

.method public static setDefaultHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 301
    if-nez p0, :cond_0

    const-string v0, "ads.heyzap.com"

    :goto_0
    sput-object v0, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    .line 302
    return-void

    :cond_0
    move-object v0, p0

    .line 301
    goto :goto_0
.end method

.method public static updateOrientation(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v0, :cond_0

    const-string v0, "landscape"

    :goto_0
    sput-object v0, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    .line 78
    return-void

    .line 77
    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/heyzap/house/request/FetchRequest;->getAdRequest()Lcom/heyzap/house/request/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/analytics/Event;->fetch(Z)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->fetchTime(J)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heyzap/analytics/Event;->commit()V

    .line 208
    invoke-virtual {p0}, Lcom/heyzap/house/request/FetchRequest;->isValid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "bad_request"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p0, v2}, Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;->onFetchResponse(Ljava/util/List;Lcom/heyzap/house/request/FetchRequest;Ljava/lang/Throwable;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/request/FetchRequest;->incrementTries()V

    .line 218
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    and-int/2addr v0, v1

    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    if-ne v0, v1, :cond_2

    .line 219
    new-instance v0, Lcom/heyzap/house/handler/NativeFetchHandler;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/handler/NativeFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/abstr/AbstractFetchHandler;->setCallback(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V

    .line 226
    invoke-static {}, Lcom/heyzap/internal/ExecutorPool;->getInstance()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/heyzap/house/request/FetchRequest$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/heyzap/house/request/FetchRequest$1;-><init>(Lcom/heyzap/house/request/FetchRequest;Landroid/content/Context;Lcom/heyzap/house/abstr/AbstractFetchHandler;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    :cond_2
    new-instance v0, Lcom/heyzap/house/handler/InterstitialFetchHandler;

    invoke-direct {v0, p1, p0}, Lcom/heyzap/house/handler/InterstitialFetchHandler;-><init>(Landroid/content/Context;Lcom/heyzap/house/request/FetchRequest;)V

    goto :goto_1
.end method

.method public getAdRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->request:Lcom/heyzap/house/request/AdRequest;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDebugEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getParams(Landroid/content/Context;)Lcom/heyzap/http/RequestParams;
    .locals 13

    .prologue
    const/4 v8, 0x1

    const-string v11, "tag"

    const-string v10, "device_free_bytes"

    const-string v9, "1"

    const-string v7, "orientation"

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is NULL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Lcom/heyzap/http/RequestParams;

    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/heyzap/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 91
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "sdk_mediator"

    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->mediator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    sget-object v1, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 96
    const-string v1, "sdk_framework"

    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->framework:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    and-int/2addr v1, v2

    sget v2, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    if-ne v1, v2, :cond_e

    .line 103
    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    invoke-static {v1}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    :goto_0
    const-string v2, "creative_type"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 118
    const-string v2, "connection_type"

    invoke-static {p1}, Lcom/heyzap/internal/Connectivity;->connectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "device_dpi"

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v5, v2

    mul-long v2, v3, v5

    .line 124
    const-string v4, "device_free_bytes"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    const-string v2, "orientation"

    invoke-virtual {v0, v7}, Lcom/heyzap/http/RequestParams;->containsKey(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 132
    sget-object v2, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 133
    invoke-static {p1}, Lcom/heyzap/house/request/FetchRequest;->updateOrientation(Landroid/content/Context;)V

    .line 135
    :cond_3
    const-string v2, "orientation"

    sget-object v2, Lcom/heyzap/house/request/FetchRequest;->gameOrientation:Ljava/lang/String;

    invoke-virtual {v0, v7, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_4
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 139
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 141
    const-string v4, "orientation"

    invoke-virtual {v0, v7}, Lcom/heyzap/http/RequestParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    const-string v5, "landscape"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-gt v2, v3, :cond_6

    :cond_5
    const-string v5, "portrait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-le v3, v2, :cond_10

    :cond_6
    move v4, v8

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 145
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move v12, v2

    move v2, v1

    move v1, v12

    .line 150
    :goto_3
    const-string v3, "device_width"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "device_height"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "supported_features"

    const-string v2, "chromeless,js_visibility_callback"

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 158
    const-string v1, "tag"

    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/heyzap/house/model/AdModel;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 165
    if-eqz v1, :cond_7

    .line 166
    const-string v2, "locale_country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "locale_lang"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 172
    const-string v1, "rejected_impression_id"

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_8
    iget v1, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    if-le v1, v8, :cond_9

    .line 177
    const-string v1, "max_count"

    iget v2, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :cond_9
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_a

    .line 182
    const-string v1, "creative_id"

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    :cond_a
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_b

    .line 187
    const-string v1, "campaign_id"

    iget-object v2, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    :cond_b
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 192
    const-string v1, "debug"

    const-string v2, "1"

    invoke-virtual {v0, v1, v9}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_c
    const-string v1, "publisher_sdk_key"

    sget-object v2, Lcom/heyzap/sdk/ads/HeyzapAds;->config:Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;

    iget-object v2, v2, Lcom/heyzap/sdk/ads/HeyzapAds$AdsConfig;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 200
    const-string v1, "use_random_strategy_v2"

    const-string v2, "1"

    invoke-virtual {v0, v1, v9}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_d
    return-object v0

    .line 105
    :cond_e
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->isImmediate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 106
    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    invoke-static {v1}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 109
    :cond_f
    iget-object v1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeTypes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/heyzap/internal/Constants$CreativeType;->requestString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    const-string v2, "device_free_bytes"

    const-string v2, "0"

    invoke-virtual {v0, v10, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 160
    :cond_11
    const-string v1, "tag"

    sget-object v1, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    move v1, v3

    goto/16 :goto_3
.end method

.method public getRandomStrategyEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/heyzap/house/request/FetchRequest;->secure:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    .line 297
    :goto_0
    const-string v1, "%s://%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/heyzap/house/request/FetchRequest;->host:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/heyzap/house/request/FetchRequest;->endpoint:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method public incrementTries()V
    .locals 2

    .prologue
    .line 236
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    .line 237
    return-void
.end method

.method public isValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/heyzap/house/request/FetchRequest;->remainingTries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdditionalParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->additionalParams:Ljava/util/Map;

    .line 245
    return-void
.end method

.method public setCampaignId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->campaignId:Ljava/lang/Integer;

    .line 277
    return-void
.end method

.method public setCreativeId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->creativeId:Ljava/lang/Integer;

    .line 249
    return-void
.end method

.method public setDebugEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->debugEnabled:Ljava/lang/Boolean;

    .line 261
    return-void
.end method

.method public setMaxCount(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/heyzap/house/request/FetchRequest;->maxCount:I

    .line 289
    return-void
.end method

.method public setRandomStrategyEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->randomStrategyEnabled:Ljava/lang/Boolean;

    .line 269
    return-void
.end method

.method public setRejectedImpressionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->rejectedImpressionId:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setResponseHandler(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/heyzap/house/request/FetchRequest;->responseHandler:Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;

    .line 73
    return-void
.end method
