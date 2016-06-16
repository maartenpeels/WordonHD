.class Lcom/chartboost/sdk/impl/ap$3;
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
    .line 273
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->b(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->b(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->c(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/al;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/al;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->d(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ao;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->e(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$3;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->e(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 281
    :cond_1
    return-void
.end method
