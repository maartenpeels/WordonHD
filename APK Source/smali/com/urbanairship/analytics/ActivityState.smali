.class Lcom/urbanairship/analytics/ActivityState;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/urbanairship/analytics/ActivityState$State;

.field private b:Lcom/urbanairship/analytics/ActivityState$State;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->a:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object p1, p0, Lcom/urbanairship/analytics/ActivityState;->c:Ljava/lang/String;

    iput p2, p0, Lcom/urbanairship/analytics/ActivityState;->d:I

    iput p3, p0, Lcom/urbanairship/analytics/ActivityState;->e:I

    iput-boolean p4, p0, Lcom/urbanairship/analytics/ActivityState;->f:Z

    return-void
.end method


# virtual methods
.method final a(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 2

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->a:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already added without being removed first. Call UAirship.shared().getAnalytics().activityStopped in every activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->a:Lcom/urbanairship/analytics/ActivityState$State;

    goto :goto_0
.end method

.method final a()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->e:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->a:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final b(Lcom/urbanairship/analytics/ActivityMonitor$Source;)V
    .locals 4

    const/16 v3, 0xe

    const-string v2, "Activity "

    sget-object v0, Lcom/urbanairship/analytics/ActivityMonitor$Source;->a:Lcom/urbanairship/analytics/ActivityMonitor$Source;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->a:Lcom/urbanairship/analytics/ActivityState$State;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed without being manually added first. Call UAirship.shared().getAnalytics().activityStarted in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->b:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->e:I

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->a:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed in Analytics not during the activity\'s onStop() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/urbanairship/analytics/ActivityState;->d:I

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->b:Lcom/urbanairship/analytics/ActivityState$State;

    sget-object v1, Lcom/urbanairship/analytics/ActivityState$State;->c:Lcom/urbanairship/analytics/ActivityState$State;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/urbanairship/analytics/ActivityState;->f:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Activity "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/analytics/ActivityState;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was not manually added during onStart(). Call UAirship.shared().getAnalytics().activityStarted in every activity\'s onStart() method."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/urbanairship/analytics/ActivityState$State;->b:Lcom/urbanairship/analytics/ActivityState$State;

    iput-object v0, p0, Lcom/urbanairship/analytics/ActivityState;->a:Lcom/urbanairship/analytics/ActivityState$State;

    goto :goto_1
.end method
