.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;
.super Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.source "HeyzapVideoAdapter.java"


# static fields
.field private static AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

.field private static CREATIVE_TYPES:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget v0, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    sput v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->CREATIVE_TYPES:I

    .line 13
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->MONETIZATION:Lcom/heyzap/internal/Constants$AuctionType;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/heyzap/house/request/AdRequest;

    sget v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->CREATIVE_TYPES:I

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/house/request/AdRequest;-><init>(ILjava/lang/String;)V

    .line 28
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V

    .line 29
    return-object v0
.end method

.method public getAdUnitCapabilities()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "heyzap_video"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "Heyzap Video"

    return-object v0
.end method

.method public onInit()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;->onInit()V

    .line 37
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 38
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapVideoAdapter;->adUnitAliasMap:Lcom/heyzap/mediation/adapter/AdUnitAliasMap;

    sget-object v1, Lcom/heyzap/internal/Constants$AdUnit;->INTERSTITIAL:Lcom/heyzap/internal/Constants$AdUnit;

    sget-object v2, Lcom/heyzap/internal/Constants$AdUnit;->VIDEO:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1, v2}, Lcom/heyzap/mediation/adapter/AdUnitAliasMap;->add(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/Constants$AdUnit;)V

    .line 39
    return-void
.end method
