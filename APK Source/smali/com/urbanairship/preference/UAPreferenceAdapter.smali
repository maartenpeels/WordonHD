.class public Lcom/urbanairship/preference/UAPreferenceAdapter;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Lcom/urbanairship/push/PushPreferences;

.field private d:Lcom/urbanairship/location/LocationPreferences;

.field private e:Ljava/util/Map;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/urbanairship/preference/UAPreferenceAdapter;->a:I

    const/16 v0, 0x3e8

    sput v0, Lcom/urbanairship/preference/UAPreferenceAdapter;->b:I

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/preference/UAPreferenceAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "Unable to modify preference "

    invoke-interface {p1}, Lcom/urbanairship/preference/UAPreference;->a()Lcom/urbanairship/preference/UAPreference$PreferenceType;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preference returned a null preference type. Ignoring preference "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->a:[I

    invoke-virtual {v0}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_2
    move v1, v5

    :goto_1
    if-eqz v1, :cond_0

    sget-object v1, Lcom/urbanairship/preference/UAPreferenceAdapter$3;->a:[I

    invoke-virtual {v0}, Lcom/urbanairship/preference/UAPreference$PreferenceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    move-object v1, v4

    :goto_2
    if-eqz v1, :cond_9

    :try_start_0
    invoke-interface {p1, v1}, Lcom/urbanairship/preference/UAPreference;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    check-cast p1, Landroid/preference/Preference;

    new-instance v1, Lcom/urbanairship/preference/UAPreferenceAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/urbanairship/preference/UAPreferenceAdapter$2;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference$PreferenceType;)V

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->n:Lcom/urbanairship/LocationOptions;

    iget-boolean v1, v1, Lcom/urbanairship/LocationOptions;->a:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->d:Lcom/urbanairship/location/LocationPreferences;

    if-nez v1, :cond_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to modify preference "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the locationService is not enabled. Ignoring preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->k:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    if-nez v1, :cond_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to modify preference "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the pushService is not enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;)V

    move v1, v3

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->k:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->l:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    if-nez v1, :cond_2

    :cond_6
    move v1, v3

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->d:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->d:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->d:Lcom/urbanairship/location/LocationPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/location/LocationPreferences;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_6
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_7
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_8
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->h()[Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_7
    move-object v1, v4

    goto/16 :goto_2

    :pswitch_9
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->h()[Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_8

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_2

    :cond_8
    move-object v1, v4

    goto/16 :goto_2

    :pswitch_a
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_b
    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_c
    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->j()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_d
    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception setting value "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Ignoring preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    sget-object v1, Lcom/urbanairship/preference/UAPreference$PreferenceType;->j:Lcom/urbanairship/preference/UAPreference$PreferenceType;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->c:Lcom/urbanairship/push/PushPreferences;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->f:I

    sget v2, Lcom/urbanairship/preference/UAPreferenceAdapter;->a:I

    if-ge v1, v2, :cond_3

    iget v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/urbanairship/preference/UAPreferenceAdapter;->f:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/urbanairship/preference/UAPreferenceAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/urbanairship/preference/UAPreferenceAdapter$1;-><init>(Lcom/urbanairship/preference/UAPreferenceAdapter;Lcom/urbanairship/preference/UAPreference;)V

    sget v2, Lcom/urbanairship/preference/UAPreferenceAdapter;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
