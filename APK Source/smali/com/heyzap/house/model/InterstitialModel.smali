.class public Lcom/heyzap/house/model/InterstitialModel;
.super Lcom/heyzap/house/model/AdModel;
.source "InterstitialModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static FORMAT:Ljava/lang/String;


# instance fields
.field private backgroundOverlay:Ljava/lang/Integer;

.field private disableGlobalTouch:Ljava/lang/Boolean;

.field private height:I

.field private manualSize:Ljava/lang/Boolean;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "interstitial"

    sput-object v0, Lcom/heyzap/house/model/InterstitialModel;->FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v5, "ad_width"

    const-string v1, "ad_height"

    .line 50
    invoke-direct {p0, p1}, Lcom/heyzap/house/model/AdModel;-><init>(Lorg/json/JSONObject;)V

    .line 52
    sget-object v0, Lcom/heyzap/house/model/InterstitialModel;->FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->creativeType:Ljava/lang/String;

    .line 53
    const-string v0, "ad_html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/model/InterstitialModel;->setHtmlData(Ljava/lang/String;)V

    .line 54
    const-string v0, "ad_height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/model/InterstitialModel;->height:I

    .line 55
    const-string v0, "ad_width"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/heyzap/house/model/InterstitialModel;->width:I

    .line 57
    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->height:I

    if-nez v0, :cond_0

    .line 58
    const-string v0, "ad_height"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "fill_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iput v3, p0, Lcom/heyzap/house/model/InterstitialModel;->height:I

    .line 64
    :cond_0
    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->width:I

    if-nez v0, :cond_1

    .line 65
    const-string v0, "ad_width"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "fill_parent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iput v3, p0, Lcom/heyzap/house/model/InterstitialModel;->width:I

    .line 71
    :cond_1
    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->height:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->width:I

    if-eqz v0, :cond_3

    move v0, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->manualSize:Ljava/lang/Boolean;

    .line 73
    const-string v0, "required_orientation"

    const-string v1, "portrait"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "hide_on_orientation_change"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/heyzap/house/model/InterstitialModel;->requiredOrientation:I

    .line 85
    :cond_2
    :goto_1
    const-string v0, "disable_global_touch"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->disableGlobalTouch:Ljava/lang/Boolean;

    .line 86
    const-string v0, "background_overlay"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->backgroundOverlay:Ljava/lang/Integer;

    .line 87
    const-string v0, "should_refetch_if_not_ready"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/heyzap/house/model/InterstitialModel;->setShouldRefetchIfNotReady(Z)V

    .line 88
    return-void

    :cond_3
    move v0, v2

    .line 71
    goto :goto_0

    .line 78
    :cond_4
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    iput v4, p0, Lcom/heyzap/house/model/InterstitialModel;->requiredOrientation:I

    goto :goto_1

    .line 81
    :cond_5
    iput v2, p0, Lcom/heyzap/house/model/InterstitialModel;->requiredOrientation:I

    goto :goto_1
.end method


# virtual methods
.method public cleanup(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    return-void
.end method

.method public doPostFetchActions(Landroid/content/Context;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {p0}, Lcom/heyzap/analytics/MetricsTracker;->getEvent(Lcom/heyzap/house/model/AdModel;)Lcom/heyzap/analytics/Event;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/analytics/Event;->creativeDownloadStartTime(J)Lcom/heyzap/analytics/Event;

    .line 112
    new-instance v0, Lcom/heyzap/house/model/InterstitialModel$1;

    invoke-direct {v0, p0, p2}, Lcom/heyzap/house/model/InterstitialModel$1;-><init>(Lcom/heyzap/house/model/InterstitialModel;Lcom/heyzap/house/model/AdModel$ModelPostFetchCompleteListener;)V

    invoke-static {p0, v0}, Lcom/heyzap/house/model/AdModel$HtmlAssetFetcher;->fetch(Lcom/heyzap/house/model/AdModel;Lcom/heyzap/internal/GenericCallback;)V

    .line 131
    return-void
.end method

.method public getBackgroundOverlayColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->backgroundOverlay:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/heyzap/house/model/InterstitialModel;->backgroundOverlay:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/heyzap/house/model/InterstitialModel;->width:I

    return v0
.end method
