.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;
.super Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.source "HeyzapCrossPromoAdapter.java"


# static fields
.field private static AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

.field private static CREATIVE_TYPES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    sget v0, Lcom/heyzap/internal/Constants$CreativeType;->INTERSTITIAL:I

    sget v1, Lcom/heyzap/internal/Constants$CreativeType;->VIDEO:I

    or-int/2addr v0, v1

    sput v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->CREATIVE_TYPES:I

    .line 11
    sget-object v0, Lcom/heyzap/internal/Constants$AuctionType;->CROSS_PROMO:Lcom/heyzap/internal/Constants$AuctionType;

    sput-object v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/heyzap/house/request/AdRequest;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/heyzap/house/request/AdRequest;

    sget v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->CREATIVE_TYPES:I

    sget-object v2, Lcom/heyzap/internal/Constants;->DEFAULT_TAG:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/heyzap/house/request/AdRequest;-><init>(ILjava/lang/String;)V

    .line 26
    sget-object v1, Lcom/heyzap/sdk/mediation/adapter/HeyzapCrossPromoAdapter;->AUCTION_TYPE:Lcom/heyzap/internal/Constants$AuctionType;

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/AdRequest;->setAuctionType(Lcom/heyzap/internal/Constants$AuctionType;)V

    .line 27
    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "heyzap_cross_promo"

    return-object v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "Heyzap Cross Promo"

    return-object v0
.end method
