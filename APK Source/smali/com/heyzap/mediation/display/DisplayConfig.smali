.class public Lcom/heyzap/mediation/display/DisplayConfig;
.super Ljava/lang/Object;
.source "DisplayConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/mediation/display/DisplayConfig$Network;
    }
.end annotation


# static fields
.field private static defaultDisplayTtl:I

.field private static defaultInterstitialVideoInterval:I


# instance fields
.field public displayTtl:I

.field public id:Ljava/lang/String;

.field public interstitialVideoEnabled:Z

.field public interstitialVideoInterval:I

.field public networks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/heyzap/mediation/display/DisplayConfig$Network;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x7530

    sput v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    .line 16
    const/16 v0, 0x5dc

    sput v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultDisplayTtl:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    .line 19
    sget v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    .line 20
    iput-boolean v5, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    .line 21
    sget v0, Lcom/heyzap/mediation/display/DisplayConfig;->defaultDisplayTtl:I

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    .line 24
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->id:Ljava/lang/String;

    .line 25
    const-string v0, "interstitial_video_interval"

    sget v1, Lcom/heyzap/mediation/display/DisplayConfig;->defaultInterstitialVideoInterval:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoInterval:I

    .line 26
    const-string v0, "interstitial_video_enabled"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->interstitialVideoEnabled:Z

    .line 27
    const-string v0, "display_ttl"

    iget v1, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/heyzap/mediation/display/DisplayConfig;->displayTtl:I

    .line 29
    const-string v0, "networks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move v1, v6

    .line 30
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/heyzap/mediation/display/DisplayConfig;->networks:Ljava/util/List;

    new-instance v4, Lcom/heyzap/mediation/display/DisplayConfig$Network;

    invoke-direct {v4, v2}, Lcom/heyzap/mediation/display/DisplayConfig$Network;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :catch_0
    move-exception v3

    .line 35
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "failed to load network json: "

    aput-object v4, v3, v6

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/heyzap/internal/Logger;->log([Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_0
    return-void
.end method
