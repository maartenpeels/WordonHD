.class Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;->addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
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
        "Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;->this$0:Lcom/heyzap/sdk/mediation/adapter/VungleAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    iget-object v1, p2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;->fetchListener:Lcom/heyzap/internal/SettableFuture;

    invoke-interface {v0, p1, v1}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p2, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$1;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/sdk/mediation/adapter/VungleAdapter$FetchHolder;)V

    return-void
.end method
