.class Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;->addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener",
        "<",
        "Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    iget-object v1, p2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-interface {v0, p1, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    .line 109
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p2, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$1;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/FacebookAdapter$FacebookAdWrapper;)V

    return-void
.end method
