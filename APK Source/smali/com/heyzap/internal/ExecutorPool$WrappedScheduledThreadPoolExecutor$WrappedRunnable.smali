.class Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;
.super Ljava/lang/Object;
.source "ExecutorPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedRunnable"
.end annotation


# instance fields
.field private final inner:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;->this$0:Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;->inner:Ljava/lang/Runnable;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;->inner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "Heyzap"

    const-string v2, "Heyzap has encountered an error and is shutting down."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    iget-object v0, p0, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor$WrappedRunnable;->this$0:Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/heyzap/internal/ExecutorPool$WrappedScheduledThreadPoolExecutor;->shutdown()V

    .line 67
    invoke-static {}, Lcom/heyzap/sdk/ads/HeyzapAds;->shutdown()V

    .line 69
    sget-object v0, Lcom/heyzap/house/Manager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heyzap/internal/Utils;->isDebug(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
