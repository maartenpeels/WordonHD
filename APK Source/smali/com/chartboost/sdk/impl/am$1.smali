.class Lcom/chartboost/sdk/impl/am$1;
.super Lcom/chartboost/sdk/impl/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/am;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/am;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/am;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am$1;->a:Lcom/chartboost/sdk/impl/am;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$1;->a:Lcom/chartboost/sdk/impl/am;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/am;->a(Lcom/chartboost/sdk/impl/am;)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am$1;->a:Lcom/chartboost/sdk/impl/am;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/am;->b(Lcom/chartboost/sdk/impl/am;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->i()V

    .line 79
    return-void
.end method
