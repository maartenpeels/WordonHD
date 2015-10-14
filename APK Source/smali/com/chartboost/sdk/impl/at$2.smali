.class Lcom/chartboost/sdk/impl/at$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/at;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/at;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/at;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/chartboost/sdk/impl/at$2;->a:Lcom/chartboost/sdk/impl/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 65
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/at$2;->a:Lcom/chartboost/sdk/impl/at;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/at;->b(Lcom/chartboost/sdk/impl/at;)Lcom/chartboost/sdk/impl/bh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/bi;->a(ZLandroid/view/View;)V

    .line 66
    return-void
.end method
