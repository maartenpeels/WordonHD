.class Lcom/chartboost/sdk/impl/be$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/be$b;->a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Model/a;

.field final synthetic b:Lcom/chartboost/sdk/impl/be$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/be$b;Lcom/chartboost/sdk/Model/a;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/chartboost/sdk/impl/be$b$1;->b:Lcom/chartboost/sdk/impl/be$b;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/be$b$1;->a:Lcom/chartboost/sdk/Model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b$1;->a:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/chartboost/sdk/impl/be$b$1;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/be$b$1;->a:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/d;->r(Lcom/chartboost/sdk/Model/a;)V

    .line 352
    :cond_0
    return-void
.end method
