.class Lcom/heyzap/house/handler/ClickHandler$1$1;
.super Ljava/lang/Object;
.source "ClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/house/handler/ClickHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/house/handler/ClickHandler$1;

.field final synthetic val$marketSpinner:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/heyzap/house/handler/ClickHandler$1;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/heyzap/house/handler/ClickHandler$1$1;->this$1:Lcom/heyzap/house/handler/ClickHandler$1;

    iput-object p2, p0, Lcom/heyzap/house/handler/ClickHandler$1$1;->val$marketSpinner:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/heyzap/house/handler/ClickHandler$1$1;->val$marketSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
