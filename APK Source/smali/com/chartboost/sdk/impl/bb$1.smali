.class Lcom/chartboost/sdk/impl/bb$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/bb;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bb;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/bb;JJ)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bb$1;->a:Lcom/chartboost/sdk/impl/bb;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bb$1;->a:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->c()V

    .line 533
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 530
    return-void
.end method
