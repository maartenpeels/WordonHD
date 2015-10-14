.class Lcom/chartboost/sdk/impl/ap$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ap;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ap;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ap$2;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$2;->a:Lcom/chartboost/sdk/impl/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;Z)V

    .line 270
    return-void
.end method
