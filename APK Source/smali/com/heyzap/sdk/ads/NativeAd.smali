.class public Lcom/heyzap/sdk/ads/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heyzap/sdk/ads/NativeAd$Ad;,
        Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;,
        Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;
    }
.end annotation


# static fields
.field private static AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

.field private static final CREATIVE_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static campaignId:Ljava/lang/Integer;

.field private static creativeId:Ljava/lang/Integer;

.field private static debugEnabled:Ljava/lang/Boolean;

.field private static lastResponse:Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->NATIVE:Lcom/heyzap/internal/Constants$AdUnit;

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "native"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->CREATIVE_TYPES:Ljava/util/ArrayList;

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->creativeId:Ljava/lang/Integer;

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->campaignId:Ljava/lang/Integer;

    .line 30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->debugEnabled:Ljava/lang/Boolean;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/heyzap/sdk/ads/NativeAd;->lastResponse:Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$202(Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;)Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;
    .locals 0

    .prologue
    .line 23
    sput-object p0, Lcom/heyzap/sdk/ads/NativeAd;->lastResponse:Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;

    return-object p0
.end method

.method private static createRequest(Ljava/lang/String;)Lcom/heyzap/house/request/FetchRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 100
    new-instance v0, Lcom/heyzap/house/request/FetchRequest;

    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->NATIVE:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/heyzap/house/request/FetchRequest;-><init>(ILjava/lang/String;Ljava/lang/Boolean;Lcom/heyzap/house/request/AdRequest;)V

    .line 101
    sget-object v1, Lcom/heyzap/sdk/ads/NativeAd;->debugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/heyzap/sdk/ads/NativeAd;->debugEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setDebugEnabled(Ljava/lang/Boolean;)V

    .line 103
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setRandomStrategyEnabled(Ljava/lang/Boolean;)V

    .line 106
    :cond_0
    sget-object v1, Lcom/heyzap/sdk/ads/NativeAd;->creativeId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setCreativeId(Ljava/lang/Integer;)V

    .line 107
    sget-object v1, Lcom/heyzap/sdk/ads/NativeAd;->campaignId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setCampaignId(Ljava/lang/Integer;)V

    .line 109
    return-object v0
.end method

.method public static fetch(ILcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/heyzap/house/model/AdModel;->DEFAULT_TAG_NAME:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/heyzap/sdk/ads/NativeAd;->fetch(Ljava/lang/String;ILcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V

    .line 43
    return-void
.end method

.method public static fetch(Ljava/lang/String;ILcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {p0}, Lcom/heyzap/sdk/ads/NativeAd;->createRequest(Ljava/lang/String;)Lcom/heyzap/house/request/FetchRequest;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p1}, Lcom/heyzap/house/request/FetchRequest;->setMaxCount(I)V

    .line 52
    new-instance v1, Lcom/heyzap/sdk/ads/NativeAd$1;

    invoke-direct {v1, p2}, Lcom/heyzap/sdk/ads/NativeAd$1;-><init>(Lcom/heyzap/sdk/ads/NativeAd$OnFetchListener;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setResponseHandler(Lcom/heyzap/house/request/FetchRequest$OnFetchResponse;)V

    .line 86
    sget-object v1, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->execute(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public static getLastResponse()Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/heyzap/sdk/ads/NativeAd;->lastResponse:Lcom/heyzap/sdk/ads/NativeAd$FetchResponse;

    return-object v0
.end method
