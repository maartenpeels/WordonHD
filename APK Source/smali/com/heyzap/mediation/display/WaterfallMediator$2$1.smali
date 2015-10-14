.class Lcom/heyzap/mediation/display/WaterfallMediator$2$1;
.super Lcom/heyzap/internal/FutureUtils$FutureRunnable;
.source "WaterfallMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/mediation/display/WaterfallMediator$2;->run(Lcom/heyzap/mediation/display/DisplayConfig;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/heyzap/internal/FutureUtils$FutureRunnable",
        "<",
        "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

.field final synthetic val$reapTimeoutFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Lcom/heyzap/mediation/display/WaterfallMediator$2;Lcom/heyzap/internal/ListenableFuture;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->this$1:Lcom/heyzap/mediation/display/WaterfallMediator$2;

    iput-object p3, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->val$reapTimeoutFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0, p2}, Lcom/heyzap/internal/FutureUtils$FutureRunnable;-><init>(Lcom/heyzap/internal/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 127
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;->success:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->val$reapTimeoutFuture:Lcom/heyzap/internal/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 124
    check-cast p1, Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;

    invoke-virtual {p0, p1, p2}, Lcom/heyzap/mediation/display/WaterfallMediator$2$1;->run(Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;Ljava/lang/Exception;)V

    return-void
.end method
