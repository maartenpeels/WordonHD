.class Lcom/chartboost/sdk/impl/aj$a$1;
.super Lcom/chartboost/sdk/impl/bl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/aj$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/aj$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/aj$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/chartboost/sdk/impl/aj$a$1;->a:Lcom/chartboost/sdk/impl/aj$a;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/bl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/aj$a$1;->a:Lcom/chartboost/sdk/impl/aj$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aj$a;->g()V

    .line 61
    return-void
.end method
