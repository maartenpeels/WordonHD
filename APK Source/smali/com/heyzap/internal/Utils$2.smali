.class final Lcom/heyzap/internal/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/Utils;->runOnMainThreadAndBlock(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$settableFuture:Lcom/heyzap/internal/SettableFuture;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lcom/heyzap/internal/SettableFuture;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lcom/heyzap/internal/Utils$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/heyzap/internal/Utils$2;->val$settableFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/internal/Utils$2;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    iget-object v0, p0, Lcom/heyzap/internal/Utils$2;->val$settableFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 746
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 742
    :try_start_1
    iget-object v1, p0, Lcom/heyzap/internal/Utils$2;->val$settableFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/heyzap/internal/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    iget-object v0, p0, Lcom/heyzap/internal/Utils$2;->val$settableFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/heyzap/internal/Utils$2;->val$settableFuture:Lcom/heyzap/internal/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/heyzap/internal/SettableFuture;->set(Ljava/lang/Object;)Z

    throw v0
.end method
