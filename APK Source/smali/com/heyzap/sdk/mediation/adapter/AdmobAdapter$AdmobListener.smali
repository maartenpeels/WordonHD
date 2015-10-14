.class Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdmobListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

.field wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;


# direct methods
.method public constructor <init>(Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter;

    .line 210
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    .line 212
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 4

    .prologue
    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 237
    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->UNKNOWN:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    .line 241
    :goto_0
    iget-object v2, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v2, v2, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v3, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v3, v1, v0}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 242
    return-void

    .line 225
    :pswitch_0
    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->REMOTE_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 228
    :pswitch_1
    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->BAD_CREDENTIALS:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 231
    :pswitch_2
    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NETWORK_ERROR:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 234
    :pswitch_3
    sget-object v1, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->clickListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdmobListener;->wrapper:Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/AdmobAdapter$AdWrapper;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method
