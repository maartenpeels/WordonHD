.class public Lcom/chartboost/sdk/impl/bl$a;
.super Lcom/chartboost/sdk/impl/bk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/chartboost/sdk/impl/bl;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/bl;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    .line 85
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bk;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/impl/bl;Z)Z

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/j;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bl$a;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 114
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->h()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->i()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    const/high16 v2, 0x77000000

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->b(Lcom/chartboost/sdk/impl/bl;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->c(Lcom/chartboost/sdk/impl/bl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->invalidate()V

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/impl/bl;Z)Z

    .line 110
    :cond_1
    :goto_1
    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bl;->c(Lcom/chartboost/sdk/impl/bl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 106
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->invalidate()V

    .line 107
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bl$a;->b:Lcom/chartboost/sdk/impl/bl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bl;->a(Lcom/chartboost/sdk/impl/bl;Z)Z

    goto :goto_1

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bl$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2
.end method
