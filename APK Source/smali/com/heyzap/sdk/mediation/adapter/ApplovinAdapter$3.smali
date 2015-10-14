.class Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;
.super Ljava/lang/Object;
.source "ApplovinAdapter.java"

# interfaces
.implements Lcom/heyzap/mediation/adapter/FetchStateManager$FetchStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;->addFetchStartedListener(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;Ljava/util/concurrent/ExecutorService;)V
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
        "Lcom/heyzap/internal/SettableFuture",
        "<",
        "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

.field final synthetic val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;


# direct methods
.method constructor <init>(Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;->this$0:Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter;

    iput-object p2, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$ApplovinFetchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;->val$fetchStartedListener:Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;

    invoke-interface {v0, p1, p2}, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    .line 233
    return-void
.end method

.method public bridge synthetic onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 229
    check-cast p2, Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/sdk/mediation/adapter/ApplovinAdapter$3;->onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V

    return-void
.end method
