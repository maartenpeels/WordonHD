.class public Lcom/urbanairship/actions/ActionActivity;
.super Landroid/app/Activity;


# static fields
.field private static b:I


# instance fields
.field private a:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/urbanairship/actions/ActionActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.urbanairship.actions.actionactivity.RESULT_INTENT_EXTRA"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    invoke-virtual {v1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Started Action Activity with null intent"

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const-string v0, "com.urbanairship.actions.START_ACTIVITY_INTENT_EXTRA"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "com.urbanairship.actions.actionactivity.RESULT_RECEIVER_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/urbanairship/actions/ActionActivity;->a:Landroid/os/ResultReceiver;

    sget v1, Lcom/urbanairship/actions/ActionActivity;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/urbanairship/actions/ActionActivity;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/actions/ActionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/analytics/Analytics;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->k()Lcom/urbanairship/analytics/Analytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/analytics/Analytics;->b(Landroid/app/Activity;)V

    return-void
.end method
