.class Lcom/heyzap/house/view/VideoControlView$3;
.super Ljava/lang/Object;
.source "VideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/view/VideoControlView;->addHideButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/house/view/VideoControlView;


# direct methods
.method constructor <init>(Lcom/heyzap/house/view/VideoControlView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/heyzap/house/view/VideoControlView$3;->this$0:Lcom/heyzap/house/view/VideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$3;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v0, v0, Lcom/heyzap/house/view/VideoControlView;->listener:Lcom/heyzap/house/view/VideoControlView$OnActionListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/heyzap/house/view/VideoControlView$3;->this$0:Lcom/heyzap/house/view/VideoControlView;

    iget-object v0, v0, Lcom/heyzap/house/view/VideoControlView;->listener:Lcom/heyzap/house/view/VideoControlView$OnActionListener;

    invoke-interface {v0}, Lcom/heyzap/house/view/VideoControlView$OnActionListener;->onHide()V

    .line 97
    :cond_0
    return-void
.end method
