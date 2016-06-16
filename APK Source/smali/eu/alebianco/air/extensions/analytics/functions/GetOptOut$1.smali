.class Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;
.super Ljava/lang/Object;
.source "GetOptOut.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/GoogleAnalytics$AppOptOutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;


# direct methods
.method constructor <init>(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;->this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAppOptOut(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;->this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    # getter for: Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;
    invoke-static {v0}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->access$000(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;->this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    # getter for: Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;
    invoke-static {v1}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->access$000(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "done"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v1, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;->this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    # getter for: Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;
    invoke-static {v1}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->access$000(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "result"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Leu/alebianco/air/extensions/analytics/functions/GetOptOut$1;->this$0:Leu/alebianco/air/extensions/analytics/functions/GetOptOut;

    # getter for: Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->mutex:Ljava/util/HashMap;
    invoke-static {v1}, Leu/alebianco/air/extensions/analytics/functions/GetOptOut;->access$000(Leu/alebianco/air/extensions/analytics/functions/GetOptOut;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
