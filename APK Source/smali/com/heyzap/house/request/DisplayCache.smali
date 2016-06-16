.class public Lcom/heyzap/house/request/DisplayCache;
.super Ljava/lang/Object;
.source "DisplayCache.java"


# instance fields
.field private model:Lcom/heyzap/house/model/AdModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heyzap/house/request/DisplayCache;->model:Lcom/heyzap/house/model/AdModel;

    .line 19
    return-void
.end method

.method public get()Lcom/heyzap/house/model/AdModel;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/heyzap/house/request/DisplayCache;->model:Lcom/heyzap/house/model/AdModel;

    return-object v0
.end method

.method public set(Lcom/heyzap/house/model/AdModel;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/heyzap/house/request/DisplayCache;->model:Lcom/heyzap/house/model/AdModel;

    .line 11
    return-void
.end method
