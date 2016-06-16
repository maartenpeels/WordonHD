.class public Lcom/urbanairship/AirshipConfigOptions;
.super Lcom/urbanairship/Options;


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "productionAppKey"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "productionAppSecret"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "developmentAppKey"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "developmentAppSecret"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "hostURL"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "analyticsServer"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "landingPageContentURL"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "gcmSender"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "transport"
    .end annotation
.end field

.field public j:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "inProduction"
    .end annotation
.end field

.field public k:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "pushServiceEnabled"
    .end annotation
.end field

.field public l:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "richPushEnabled"
    .end annotation
.end field

.field public m:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "analyticsEnabled"
    .end annotation
.end field

.field public n:Lcom/urbanairship/LocationOptions;

.field public o:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "developmentLogLevel"
    .end annotation
.end field

.field public p:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "productionLogLevel"
    .end annotation
.end field

.field public q:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        a = "android.os.Build.VERSION_CODES"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        a = "minSdkVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/urbanairship/Options;-><init>()V

    const-string v0, "https://device-api.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    const-string v0, "https://combine.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->f:Ljava/lang/String;

    const-string v0, "https://dl.urbanairship.com/aaa/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->k:Z

    iput-boolean v1, p0, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->m:Z

    new-instance v0, Lcom/urbanairship/LocationOptions;

    invoke-direct {v0}, Lcom/urbanairship/LocationOptions;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->o:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->p:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->q:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;
    .locals 2

    new-instance v0, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v0}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/urbanairship/AirshipConfigOptions;->b(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    invoke-virtual {v1, p0}, Lcom/urbanairship/LocationOptions;->b(Landroid/content/Context;)V

    return-object v0
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
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/urbanairship/AirshipConfigOptions$TransportType;
    .locals 2

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->a:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions$TransportType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->c:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/urbanairship/AirshipConfigOptions$TransportType;->b:Lcom/urbanairship/AirshipConfigOptions$TransportType;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->p:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->o:I

    goto :goto_0
.end method

.method public final e()Z
    .locals 9

    const/16 v5, 0x20

    const/4 v4, 0x0

    const-string v8, "AirshipConfigOptions: "

    const-string v7, " is not a valid log level. Falling back to "

    const-string v6, " is not a valid "

    const/4 v0, 0x1

    new-instance v1, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v1}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    iget-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-eqz v2, :cond_6

    const-string v2, "production"

    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AirshipConfigOptions: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not a valid "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " app key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v0, v4

    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AirshipConfigOptions: "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not a valid "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " app secret"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move v0, v4

    :cond_3
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_4

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-class v3, Lcom/urbanairship/PropertyName;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The public field \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is missing an annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v2, "AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg:"

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    const-string v2, "\t-keepattributes *Annotation*"

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->j:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/urbanairship/AirshipConfigOptions;->p:I

    invoke-static {v2}, Lcom/urbanairship/AirshipConfigOptions;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/urbanairship/AirshipConfigOptions;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid log level. Falling back to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/urbanairship/AirshipConfigOptions;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ERROR."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iget v1, v1, Lcom/urbanairship/AirshipConfigOptions;->p:I

    iput v1, p0, Lcom/urbanairship/AirshipConfigOptions;->p:I

    :cond_5
    :goto_2
    return v0

    :cond_6
    const-string v2, "development"

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/urbanairship/AirshipConfigOptions;->o:I

    invoke-static {v2}, Lcom/urbanairship/AirshipConfigOptions;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/urbanairship/AirshipConfigOptions;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid log level. Falling back to "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/urbanairship/AirshipConfigOptions;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DEBUG."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    iget v1, v1, Lcom/urbanairship/AirshipConfigOptions;->o:I

    iput v1, p0, Lcom/urbanairship/AirshipConfigOptions;->o:I

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "airshipconfig.properties"

    return-object v0
.end method
