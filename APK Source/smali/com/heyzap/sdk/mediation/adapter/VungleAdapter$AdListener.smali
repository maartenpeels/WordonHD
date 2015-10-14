.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;


# direct methods
.method private constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;-><init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdEnd(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 231
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->clickListener:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->displayListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$DisplayResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    sget-object v2, Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;->NO_FILL:Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;

    invoke-direct {v1, v2, p1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>(Lcom/heyzap/internal/Constants$AdNetworkFetchFailureReason;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public onCachedAdAvailable()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->fetchStateManager:Lcom/heyzap/mediation/adapter/FetchStateManager;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$400(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/mediation/adapter/FetchStateManager;

    move-result-object v0

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->AD_UNIT:Lcom/heyzap/internal/Constants$AdUnit;
    invoke-static {}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$300()Lcom/heyzap/internal/Constants$AdUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/mediation/adapter/FetchStateManager;->get(Lcom/heyzap/internal/Constants$AdUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    new-instance v1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-direct {v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;-><init>()V

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/heyzap/internal/Constants$AdUnit;->INCENTIVIZED:Lcom/heyzap/internal/Constants$AdUnit;

    iget-object v1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v1}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->adUnit:Lcom/heyzap/internal/Constants$AdUnit;

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/Constants$AdUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->incentiveListener:Lcom/heyzap/internal/SettableFuture;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$AdListener;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    # getter for: Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->displayHolder:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;
    invoke-static {v0}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->access$700(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;)Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$DisplayHolder;->closeListener:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method
