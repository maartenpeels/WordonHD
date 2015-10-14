.class final Lcom/heyzap/internal/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/internal/Utils;->clickWrap(Landroid/content/Context;Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extraPaddingDpBottom:I

.field final synthetic val$extraPaddingDpLeft:I

.field final synthetic val$extraPaddingDpRight:I

.field final synthetic val$extraPaddingDpTop:I

.field final synthetic val$inner:Landroid/view/View;

.field final synthetic val$wrapper:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;IIIILandroid/view/View;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/heyzap/internal/Utils$1;->val$wrapper:Landroid/view/View;

    iput-object p2, p0, Lcom/heyzap/internal/Utils$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpTop:I

    iput p4, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpRight:I

    iput p5, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpBottom:I

    iput p6, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpLeft:I

    iput-object p7, p0, Lcom/heyzap/internal/Utils$1;->val$inner:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 404
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/heyzap/internal/Utils$1;->val$wrapper:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 406
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/heyzap/internal/Utils$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpTop:I

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 407
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/heyzap/internal/Utils$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpRight:I

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 408
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/heyzap/internal/Utils$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpBottom:I

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 409
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/heyzap/internal/Utils$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/heyzap/internal/Utils$1;->val$extraPaddingDpLeft:I

    invoke-static {v2, v3}, Lcom/heyzap/internal/Utils;->getScaledSize(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 410
    iget-object v1, p0, Lcom/heyzap/internal/Utils$1;->val$wrapper:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/heyzap/internal/Utils$1;->val$inner:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 411
    return-void
.end method
