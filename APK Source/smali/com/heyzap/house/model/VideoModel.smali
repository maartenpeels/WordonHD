.class public Lcom/heyzap/house/model/VideoModel;
.super Lcom/heyzap/house/model/AdModel;
.source "VideoModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/house/model/VideoModel$Cacher;,
        Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;
    }
.end annotation


# static fields
.field public static FORMAT:Ljava/lang/String; = null

.field private static final serialVersionUID:J = -0x70a7c8bce90a7283L


# instance fields
.field private allowStreamingFallback:Ljava/lang/Boolean;

.field private transient cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

.field private cachedVideoPath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private disableGlobalTouch:Ljava/lang/Boolean;

.field private displayOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;",
            ">;"
        }
    .end annotation
.end field

.field private fileCached:Ljava/lang/Boolean;

.field private forceStreaming:Ljava/lang/Boolean;

.field private interstitialBackgroundOverlayColor:Ljava/lang/Integer;

.field private interstitialHeight:I

.field private interstitialWidth:I

.field private manualSize:Ljava/lang/Boolean;

.field public percentDownloaded:I

.field requiredDownloadPercent:Ljava/lang/Double;

.field private sentVideoComplete:Ljava/lang/Boolean;

.field private showCountdown:Ljava/lang/Boolean;

.field public size:I

.field private staticUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private streamingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoHeight:Ljava/lang/Integer;

.field private videoLength:Ljava/lang/Integer;

.field private videoWidth:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "video"

    sput-object v0, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v1, -0x1

    const/4 v10, 0x0

    const-string v4, "meta"

    .line 74
    invoke-direct {p0, p1}, Lcom/heyzap/house/model/AdModel;-><init>(Lorg/json/JSONObject;)V

    .line 45
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    .line 48
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    .line 49
    iput v1, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    .line 50
    iput v1, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    .line 57
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    .line 59
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    .line 60
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->allowStreamingFallback:Ljava/lang/Boolean;

    .line 61
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->forceStreaming:Ljava/lang/Boolean;

    .line 63
    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->cachedVideoPath:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    .line 67
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->fileCached:Ljava/lang/Boolean;

    .line 68
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->showCountdown:Ljava/lang/Boolean;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    .line 75
    sget-object v0, Lcom/heyzap/house/model/VideoModel;->FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->creativeType:Ljava/lang/String;

    .line 77
    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "interstitial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    const-string v1, "meta"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "meta"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    const-string v2, "height"

    iget v3, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    .line 83
    const-string v2, "width"

    iget v3, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    .line 86
    :cond_0
    const-string v1, "html_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/heyzap/house/model/VideoModel;->setHtmlData(Ljava/lang/String;)V

    .line 88
    const-string v1, "background_color"

    iget-object v2, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    .line 92
    :cond_1
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    const-string v0, "meta"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const-string v0, "meta"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    const-string v2, "width"

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->videoWidth:Ljava/lang/Integer;

    .line 99
    const-string v2, "height"

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/heyzap/house/model/VideoModel;->videoHeight:Ljava/lang/Integer;

    .line 100
    const-string v2, "length"

    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/VideoModel;->videoLength:Ljava/lang/Integer;

    .line 104
    :cond_2
    new-instance v2, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    invoke-direct {v2, p0}, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;-><init>(Lcom/heyzap/house/model/VideoModel;)V

    .line 105
    invoke-virtual {v2, v1}, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->setOptions(Lorg/json/JSONObject;)V

    .line 106
    const-string v0, "ad_unit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    const-string v0, "ad_unit"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    invoke-static {}, Lcom/heyzap/internal/Constants$AdUnit;->values()[Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v4

    array-length v5, v4

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 109
    invoke-virtual {v2}, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    .line 110
    invoke-virtual {v7}, Lcom/heyzap/internal/Constants$AdUnit;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 112
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 113
    invoke-virtual {v0, v8}, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->setOptions(Lorg/json/JSONObject;)V

    .line 116
    :cond_3
    iget-object v8, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 120
    :cond_4
    const-string v0, "static_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    const-string v0, "static_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v2, v10

    .line 122
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 123
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v4, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    :cond_5
    const-string v0, "streaming_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    const-string v0, "streaming_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v10

    .line 130
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 137
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No video URLs."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_7
    const-string v0, "should_refetch_if_not_ready"

    invoke-virtual {p1, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/model/VideoModel;->setShouldRefetchIfNotReady(Z)V

    .line 143
    return-void
.end method

.method static synthetic access$002(Lcom/heyzap/house/model/VideoModel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    invoke-virtual {v0}, Lcom/heyzap/http/RequestHandle;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    invoke-virtual {v0}, Lcom/heyzap/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/heyzap/http/RequestHandle;->cancel(Z)Z

    .line 231
    :cond_0
    return-void
.end method

.method public cleanup(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CLEANUP) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->cancelDownload()V

    .line 223
    return-void
.end method

.method public doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-static {p0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->creativeDownloadStartTime(J)Lcom/heyzap/analytics/Event;

    .line 295
    :try_start_0
    new-instance v0, Lcom/heyzap/house/model/VideoModel$2;

    invoke-direct {v0, p0}, Lcom/heyzap/house/model/VideoModel$2;-><init>(Lcom/heyzap/house/model/VideoModel;)V

    invoke-static {p0, v0}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V

    .line 308
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->shouldForceStreaming()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-static {p1, p0, p2}, Lcom/heyzap/house/model/VideoModel$Cacher;->start(Landroid/content/Context;Lcom/heyzap/house/model/VideoModel;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 318
    if-eqz p2, :cond_0

    invoke-interface {p2, v3, v0}, Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;->onComplete(Lcom/heyzap/house/model/AdModel;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCachedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->cachedVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialBackgroundOverlayColor()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialBackgroundOverlayColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInterstitialHeight()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialHeight:I

    return v0
.end method

.method public getInterstitialWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/heyzap/house/model/VideoModel;->interstitialWidth:I

    return v0
.end method

.method public getStaticUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->staticUrls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->streamingUrls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-object v0, p0

    .line 154
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-object v0, p0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->displayOptions:Ljava/util/HashMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->UNKNOWN:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-object v0, p0

    goto :goto_0
.end method

.method public isFileCached()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->fileCached:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onComplete(Landroid/content/Context;IILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "true"

    .line 244
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->sentVideoComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 245
    const-string v0, "Already sent video complete successfully"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/heyzap/house/model/AdModel;->getEventRequestParams()Lcom/heyzap/http/RequestParams;

    move-result-object v0

    .line 253
    const-string v1, "video_duration_ms"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, p3

    .line 260
    :goto_1
    const-string v2, "watched_duration_ms"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    move-object v1, v6

    .line 263
    :goto_2
    const-string v2, "video_finished"

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getVideoDisplayOptions()Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/house/model/VideoModel$VideoDisplayOptions;->lockoutTime:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 266
    const-string v2, "lockout_time_seconds"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->getAdUnit()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    if-ne v1, v2, :cond_1

    .line 269
    const-string v1, "incentivized"

    const-string v2, "true"

    invoke-virtual {v0, v1, v6}, Lcom/heyzap/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/heyzap/house/Manager;->AD_SERVER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/event/video_impression_complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/heyzap/house/model/VideoModel$1;

    invoke-direct {v3, p0}, Lcom/heyzap/house/model/VideoModel$1;-><init>(Lcom/heyzap/house/model/VideoModel;)V

    invoke-static {v1, v2, v0, v3}, Lcom/heyzap/internal/APIClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/heyzap/http/RequestParams;Lcom/heyzap/http/AsyncHttpResponseHandler;)V

    .line 286
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    const-string v1, "false"

    goto :goto_2

    :cond_3
    move v1, p2

    goto :goto_1
.end method

.method public onInterstitialFallback()V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/heyzap/house/model/VideoModel;->cancelDownload()V

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 238
    const-string v1, "interstitial_fallback"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-super {p0, v0}, Lcom/heyzap/house/model/AdModel;->setAdditionalEventParams(Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method public setCachePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->cachedVideoPath:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCacheRequestHandle(Lcom/heyzap/http/RequestHandle;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->cacheRequestHandle:Lcom/heyzap/http/RequestHandle;

    .line 173
    return-void
.end method

.method public setFileCached(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/heyzap/house/model/VideoModel;->fileCached:Ljava/lang/Boolean;

    .line 205
    return-void
.end method

.method public shouldAllowFallbackToStreaming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->allowStreamingFallback:Ljava/lang/Boolean;

    return-object v0
.end method

.method public shouldForceStreaming()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->forceStreaming:Ljava/lang/Boolean;

    return-object v0
.end method

.method public showCountdown()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/heyzap/house/model/VideoModel;->showCountdown:Ljava/lang/Boolean;

    return-object v0
.end method
