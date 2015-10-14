.class public Lcom/urbanairship/LocationOptions;
.super Lcom/urbanairship/Options;


# instance fields
.field public a:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "locationServiceEnabled"
    .end annotation
.end field

.field public b:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "allowGPSForLocationTracking"
    .end annotation
.end field

.field public c:I
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "updateIntervalMeters"
    .end annotation
.end field

.field public d:J
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "updateIntervalSeconds"
    .end annotation
.end field

.field public e:J
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "backgroundReportingIntervalSeconds"
    .end annotation
.end field

.field public f:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "accuracy"
    .end annotation
.end field

.field public g:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "horizontalAccuracy"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public h:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.location.Criteria"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "powerRequirement"
    .end annotation
.end field

.field public i:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "altitudeRequired"
    .end annotation
.end field

.field public j:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "bearingRequired"
    .end annotation
.end field

.field public k:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "speedRequired"
    .end annotation
.end field

.field public l:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "costAllowed"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    const-wide/16 v3, 0x384

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/urbanairship/Options;-><init>()V

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->a:Z

    iput-boolean v2, p0, Lcom/urbanairship/LocationOptions;->b:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/urbanairship/LocationOptions;->c:I

    iput-wide v3, p0, Lcom/urbanairship/LocationOptions;->d:J

    iput-wide v3, p0, Lcom/urbanairship/LocationOptions;->e:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/urbanairship/LocationOptions;->f:I

    iput v1, p0, Lcom/urbanairship/LocationOptions;->g:I

    iput v2, p0, Lcom/urbanairship/LocationOptions;->h:I

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->i:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->j:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->k:Z

    iput-boolean v1, p0, Lcom/urbanairship/LocationOptions;->l:Z

    return-void
.end method

.method private static a(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 15

    const-wide/32 v12, 0x15180

    const-wide/16 v10, 0x3c

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v14, " is not a valid location accuracy requirement. Falling back to "

    new-instance v0, Lcom/urbanairship/LocationOptions;

    invoke-direct {v0}, Lcom/urbanairship/LocationOptions;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v8

    move v4, v9

    :goto_0
    if-ge v3, v2, :cond_0

    :try_start_1
    aget-object v5, v1, v3

    const-class v6, Lcom/urbanairship/PropertyName;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The public field \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is missing an annotation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v5, "LocationOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:"

    invoke-static {v5}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v5, "\t-keepattributes *Annotation*"

    invoke-static {v5}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    iget v2, p0, Lcom/urbanairship/LocationOptions;->f:I

    invoke-static {v2}, Lcom/urbanairship/LocationOptions;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/urbanairship/LocationOptions;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid location accuracy requirement. Falling back to "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/urbanairship/LocationOptions;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ACCURACY_COARSE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iget v2, v0, Lcom/urbanairship/LocationOptions;->f:I

    iput v2, p0, Lcom/urbanairship/LocationOptions;->f:I

    :cond_1
    iget v2, p0, Lcom/urbanairship/LocationOptions;->g:I

    invoke-static {v2}, Lcom/urbanairship/LocationOptions;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/urbanairship/LocationOptions;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid location accuracy requirement. Falling back to "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/urbanairship/LocationOptions;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NO_REQUIREMENT."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iget v2, v0, Lcom/urbanairship/LocationOptions;->g:I

    iput v2, p0, Lcom/urbanairship/LocationOptions;->g:I

    :cond_2
    iget v2, p0, Lcom/urbanairship/LocationOptions;->h:I

    packed-switch v2, :pswitch_data_0

    move v2, v8

    :goto_2
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/urbanairship/LocationOptions;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid power requirement. Falling back to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/urbanairship/LocationOptions;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " POWER_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iget v0, v0, Lcom/urbanairship/LocationOptions;->h:I

    iput v0, p0, Lcom/urbanairship/LocationOptions;->h:I

    :cond_3
    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->d:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The updateIntervalSeconds "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may decrease battery life."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget v0, p0, Lcom/urbanairship/LocationOptions;->c:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The updateIntervalMeters "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/urbanairship/LocationOptions;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may decrease battery life if the updateIntervalSeconds value is also low."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_5
    :goto_4
    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->e:J

    cmp-long v0, v2, v10

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The backgroundReportingIntervalSeconds "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may decrease battery life."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_6
    :goto_5
    return v1

    :pswitch_0
    move v2, v9

    goto/16 :goto_2

    :cond_7
    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->d:J

    cmp-long v0, v2, v12

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The updateIntervalSeconds "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may provide less accurate location updates."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/urbanairship/LocationOptions;->c:I

    const v2, 0x186a0

    if-le v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The updateIntervalMeters "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/urbanairship/LocationOptions;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may provide less accurate location updates."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->e:J

    cmp-long v0, v2, v12

    if-lez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The backgroundReportingIntervalSeconds "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/urbanairship/LocationOptions;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may provide less detailed analytic reports."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v1

    move v1, v9

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move v1, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "location.properties"

    return-object v0
.end method
