.class public Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;
.super Ljava/lang/Object;
.source "HeyzapAdapter.java"

# interfaces
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnIncentiveResultListener;
.implements Lcom/heyzap/sdk/ads/HeyzapAds$OnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdListener"
.end annotation


# instance fields
.field private final adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;)V

    return-void
.end method


# virtual methods
.method public onAudioFinished()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onAudioStarted()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public onAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public onFailedToFetch(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    const-string v3, "No internet connection or no fill."

    invoke-direct {v1, v2, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public onFailedToShow(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    const-string v2, "network failed to show"

    invoke-direct {v1, v2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public onHide(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public onImpressed()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->impressionListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public onIncomplete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public onShow(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdListener;->adWrapper:Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/HeyzapAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method
