.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/ImpressionListener;
.implements Lcom/facebook/ads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    .line 194
    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 4

    .prologue
    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 229
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v2, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 235
    return-void

    .line 209
    :sswitch_0
    const-string v0, "NETWORK_ERROR"

    .line 210
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 213
    :sswitch_1
    const-string v0, "NO_FILL"

    .line 214
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 217
    :sswitch_2
    const-string v0, "LOAD_TOO_FREQUENTLY"

    .line 218
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 221
    :sswitch_3
    const-string v0, "SERVER_ERROR"

    .line 222
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 225
    :sswitch_4
    const-string v0, "INTERNAL_ERROR"

    .line 226
    sget-object v0, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->INTERNAL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
