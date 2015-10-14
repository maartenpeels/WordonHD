.class public interface abstract Lcom/heyzap/internal/RetryManager$Schedule;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/internal/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Schedule"
.end annotation


# virtual methods
.method public abstract getIntervalMillis()J
.end method

.method public abstract incRetries()V
.end method
