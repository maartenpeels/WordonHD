.class public final Lcom/heyzap/internal/SettableFuture;
.super Lcom/heyzap/internal/AbstractFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/heyzap/internal/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/heyzap/internal/AbstractFuture;-><init>()V

    return-void
.end method

.method public static create()Lcom/heyzap/internal/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/heyzap/internal/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/heyzap/internal/SettableFuture;

    invoke-direct {v0}, Lcom/heyzap/internal/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/heyzap/internal/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/heyzap/internal/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
