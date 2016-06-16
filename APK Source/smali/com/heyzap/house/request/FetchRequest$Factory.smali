.class public Lcom/heyzap/house/request/FetchRequest$Factory;
.super Ljava/lang/Object;
.source "FetchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/house/request/FetchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/heyzap/house/request/AdRequest;)Lcom/heyzap/house/request/FetchRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 312
    new-instance v0, Lcom/heyzap/house/request/FetchRequest;

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getCreativeTypes()I

    move-result v1

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->isImmediate()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/heyzap/house/request/FetchRequest;-><init>(ILjava/lang/String;Ljava/lang/Boolean;Lcom/heyzap/house/request/AdRequest;)V

    .line 313
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getDebuggable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setDebugEnabled(Ljava/lang/Boolean;)V

    .line 315
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setRandomStrategyEnabled(Ljava/lang/Boolean;)V

    .line 318
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getAuctionType()Lcom/heyzap/internal/Constants$AuctionType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "auction_type"

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getAuctionType()Lcom/heyzap/internal/Constants$AuctionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/heyzap/internal/Constants$AuctionType;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getCreativeId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 325
    const-string v2, "creative_id"

    invoke-virtual {p0}, Lcom/heyzap/house/request/AdRequest;->getCreativeId()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_2
    invoke-virtual {v0, v1}, Lcom/heyzap/house/request/FetchRequest;->setAdditionalParams(Ljava/util/Map;)V

    .line 329
    return-object v0
.end method
