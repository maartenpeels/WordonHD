.class public Lcom/heyzap/sdk/ads/NativeAd$Ad;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/ads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ad"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30661315258145bdL


# instance fields
.field private model:Lcom/heyzap/house/model/NativeModel;


# direct methods
.method private constructor <init>(Lcom/heyzap/house/model/NativeModel;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/house/model/NativeModel;Lcom/heyzap/sdk/ads/NativeAd$1;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;-><init>(Lcom/heyzap/house/model/NativeModel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/heyzap/sdk/ads/NativeAd$Ad;)Lcom/heyzap/house/model/NativeModel;
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getModel()Lcom/heyzap/house/model/NativeModel;

    move-result-object v0

    return-object v0
.end method

.method private getModel()Lcom/heyzap/house/model/NativeModel;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    return-object v0
.end method


# virtual methods
.method public doClick(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Lcom/heyzap/house/handler/ClickHandler;

    iget-object v1, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    invoke-direct {v0, v1}, Lcom/heyzap/house/handler/ClickHandler;-><init>(Lcom/heyzap/house/model/AdModel;)V

    .line 218
    invoke-virtual {v0, p1}, Lcom/heyzap/house/handler/ClickHandler;->doClick(Landroid/content/Context;)V

    .line 219
    return-void
.end method

.method public doImpression()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    sget-object v1, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/model/NativeModel;->onImpression(Landroid/content/Context;)V

    .line 209
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 349
    :catch_1
    move-exception v0

    .line 350
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 351
    :catch_2
    move-exception v0

    .line 352
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "developer_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 394
    :catch_1
    move-exception v0

    .line 395
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 396
    :catch_2
    move-exception v0

    .line 397
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getGameRating()D
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "rating"

    const-string v2, "0.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    invoke-virtual {v0}, Lcom/heyzap/house/model/NativeModel;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 303
    :catch_1
    move-exception v0

    .line 304
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 305
    :catch_2
    move-exception v0

    .line 306
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    return-wide v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 439
    :catch_1
    move-exception v0

    .line 440
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 441
    :catch_2
    move-exception v0

    .line 442
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 258
    :catch_1
    move-exception v0

    .line 259
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0

    .line 260
    :catch_2
    move-exception v0

    .line 261
    new-instance v0, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;

    invoke-direct {v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad$AdException;-><init>()V

    throw v0
.end method

.method public has(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/heyzap/sdk/ads/NativeAd$Ad;->model:Lcom/heyzap/house/model/NativeModel;

    iget-object v0, v0, Lcom/heyzap/house/model/NativeModel;->data:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    move-object v0, p2

    .line 376
    goto :goto_0
.end method

.method public optDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 408
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public optDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 419
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getDouble(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 420
    :catch_0
    move-exception v0

    move-object v0, p2

    .line 421
    goto :goto_0
.end method

.method public optInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getInt(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v0

    move-object v0, p2

    .line 330
    goto :goto_0
.end method

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 466
    :goto_0
    return-wide v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/heyzap/sdk/ads/NativeAd$Ad;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 284
    :catch_0
    move-exception v0

    move-object v0, p2

    .line 285
    goto :goto_0
.end method
