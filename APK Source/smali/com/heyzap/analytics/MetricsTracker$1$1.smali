.class Lcom/heyzap/analytics/MetricsTracker$1$1;
.super Lcom/heyzap/http/AsyncHttpResponseHandler;
.source "MetricsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heyzap/analytics/MetricsTracker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heyzap/analytics/MetricsTracker$1;

.field final synthetic val$toSend:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/heyzap/analytics/MetricsTracker$1;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/heyzap/analytics/MetricsTracker$1$1;->this$0:Lcom/heyzap/analytics/MetricsTracker$1;

    iput-object p2, p0, Lcom/heyzap/analytics/MetricsTracker$1$1;->val$toSend:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/heyzap/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/heyzap/analytics/MetricsTracker$1$1;->val$toSend:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method
