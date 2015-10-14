.class public interface abstract Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchStartedListener;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heyzap/mediation/abstr/NetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchStartedListener"
.end annotation


# virtual methods
.method public abstract onFetchStarted(Lcom/heyzap/internal/Constants$AdUnit;Lcom/heyzap/internal/SettableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/heyzap/internal/Constants$AdUnit;",
            "Lcom/heyzap/internal/SettableFuture",
            "<",
            "Lcom/heyzap/mediation/abstr/NetworkAdapter$FetchResult;",
            ">;)V"
        }
    .end annotation
.end method
