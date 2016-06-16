.class Lcom/heyzap/analytics/Event$2$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/analytics/Event$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/heyzap/analytics/Event$2;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/heyzap/analytics/Event$2;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/heyzap/analytics/Event$2$1;->this$1:Lcom/heyzap/analytics/Event$2;

    iput-object p2, p0, Lcom/heyzap/analytics/Event$2$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/heyzap/analytics/Event$2$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/heyzap/analytics/Event$2$1;->this$1:Lcom/heyzap/analytics/Event$2;

    iget-object v1, v1, Lcom/heyzap/analytics/Event$2;->this$0:Lcom/heyzap/analytics/Event;

    iget-object v1, v1, Lcom/heyzap/analytics/Event;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    return-void
.end method
