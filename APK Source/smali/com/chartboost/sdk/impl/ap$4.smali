.class Lcom/chartboost/sdk/impl/ap$4;
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

.field private b:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ap;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ap$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->f(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->f(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/bh$a;->d()I

    move-result v0

    .line 338
    if-lez v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    iput v0, v1, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 340
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    iget v1, v1, Lcom/chartboost/sdk/impl/ai;->n:I

    int-to-float v1, v1

    .line 341
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ap;->f(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/bh$a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->s()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai;->q()V

    .line 343
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 346
    :cond_0
    int-to-float v1, v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ap;->f(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/bh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/bh;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/chartboost/sdk/impl/bh$a;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 347
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ap;->c(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/al;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/al;->a(F)V

    .line 348
    div-int/lit16 v0, v0, 0x3e8

    .line 350
    iget v1, p0, Lcom/chartboost/sdk/impl/ap$4;->b:I

    if-eq v1, v0, :cond_1

    .line 351
    iput v0, p0, Lcom/chartboost/sdk/impl/ap$4;->b:I

    .line 352
    div-int/lit8 v1, v0, 0x3c

    .line 353
    rem-int/lit8 v0, v0, 0x3c

    .line 354
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/ap;->g(Lcom/chartboost/sdk/impl/ap;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/ai$a;->b(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 362
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->a(Lcom/chartboost/sdk/impl/ap;)Lcom/chartboost/sdk/impl/ai;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/chartboost/sdk/impl/ai;->a(ZLandroid/view/View;)V

    .line 363
    invoke-virtual {v0, v6}, Lcom/chartboost/sdk/impl/bl;->setEnabled(Z)V

    .line 367
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/ap;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->h(Lcom/chartboost/sdk/impl/ap;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    invoke-static {}, Lcom/chartboost/sdk/impl/ap;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ap$4;->a:Lcom/chartboost/sdk/impl/ap;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ap;->h(Lcom/chartboost/sdk/impl/ap;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method
