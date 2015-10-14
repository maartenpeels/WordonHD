.class public abstract Lcom/heyzap/internal/RetryManager$RetryableTask;
.super Ljava/lang/Object;
.source "RetryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RetryableTask"
.end annotation


# instance fields
.field private retryManager:Lcom/heyzap/internal/RetryManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/heyzap/internal/RetryManager$RetryableTask;->retryManager:Lcom/heyzap/internal/RetryManager;

    invoke-virtual {v0}, Lcom/heyzap/internal/RetryManager;->retry()V

    .line 112
    return-void
.end method

.method public setRetryManager(Lcom/heyzap/internal/RetryManager;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/heyzap/internal/RetryManager$RetryableTask;->retryManager:Lcom/heyzap/internal/RetryManager;

    .line 116
    return-void
.end method
