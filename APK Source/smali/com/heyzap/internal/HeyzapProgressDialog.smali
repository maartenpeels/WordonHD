.class public Lcom/heyzap/internal/HeyzapProgressDialog;
.super Landroid/app/ProgressDialog;
.source "HeyzapProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/heyzap/internal/HeyzapProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/heyzap/internal/HeyzapProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/heyzap/internal/HeyzapProgressDialog;
    .locals 6

    .prologue
    .line 53
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/heyzap/internal/HeyzapProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/heyzap/internal/HeyzapProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/heyzap/internal/HeyzapProgressDialog;
    .locals 6

    .prologue
    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/heyzap/internal/HeyzapProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/heyzap/internal/HeyzapProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/heyzap/internal/HeyzapProgressDialog;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/heyzap/internal/HeyzapProgressDialog;

    invoke-direct {v0, p0}, Lcom/heyzap/internal/HeyzapProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/heyzap/internal/HeyzapProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0, p2}, Lcom/heyzap/internal/HeyzapProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, p3}, Lcom/heyzap/internal/HeyzapProgressDialog;->setIndeterminate(Z)V

    .line 73
    invoke-virtual {v0, p4}, Lcom/heyzap/internal/HeyzapProgressDialog;->setCancelable(Z)V

    .line 74
    invoke-virtual {v0, p5}, Lcom/heyzap/internal/HeyzapProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 75
    invoke-virtual {v0}, Lcom/heyzap/internal/HeyzapProgressDialog;->show()V

    .line 76
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 28
    :try_start_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 19
    :try_start_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
