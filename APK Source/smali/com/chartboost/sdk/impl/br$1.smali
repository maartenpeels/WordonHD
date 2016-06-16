.class Lcom/chartboost/sdk/impl/br$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/br;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/br;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/br;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v2, v0

    const v3, 0x3c888889

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/chartboost/sdk/impl/br;->a(Lcom/chartboost/sdk/impl/br;F)F

    .line 36
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/br;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 37
    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 39
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/br;->a(Lcom/chartboost/sdk/impl/br;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/br;->b(Lcom/chartboost/sdk/impl/br;F)F

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/br;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/br$1;->a:Lcom/chartboost/sdk/impl/br;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/br;->invalidate()V

    .line 44
    :cond_1
    return-void
.end method
