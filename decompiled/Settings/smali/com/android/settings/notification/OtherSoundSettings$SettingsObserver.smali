.class final Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/OtherSoundSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/OtherSoundSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    # getter for: Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$300()[Lcom/android/settings/notification/SettingPref;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    # getter for: Lcom/android/settings/notification/OtherSoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/notification/OtherSoundSettings;->access$400(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public register(Z)V
    .locals 7
    .param p1    # Z

    iget-object v5, p0, Lcom/android/settings/notification/OtherSoundSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/OtherSoundSettings;

    # invokes: Lcom/android/settings/notification/OtherSoundSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/settings/notification/OtherSoundSettings;->access$200(Lcom/android/settings/notification/OtherSoundSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_0

    # getter for: Lcom/android/settings/notification/OtherSoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$300()[Lcom/android/settings/notification/SettingPref;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
