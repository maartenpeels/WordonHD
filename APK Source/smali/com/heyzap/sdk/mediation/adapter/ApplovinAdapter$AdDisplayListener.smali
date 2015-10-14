.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdDisplayListener"
.end annotation


# instance fields
.field private final adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$1;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 369
    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 354
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 359
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdDisplayListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method
