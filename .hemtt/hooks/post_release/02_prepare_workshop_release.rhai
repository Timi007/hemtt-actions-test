let project = HEMTT.project();

let release_folder = HEMTT_OUT;

if (release_folder.exists()) {
    let releases = HEMTT_RFS.join("releases");
    let dst = releases.join("@" + project.name());

    if (dst.exists()) {
        print("Removing previous workshop release folder");
        dst.remove_dir_all();
    }

    print("Moving release to " + dst);
    if (!release_folder.copy(dst)) {
        fatal("Failed to copy " + release_folder + " to " + dst);
    }

    print("Deleting second addon");
    let addons = dst.join("addons");
    let second_addon_pbo_name = project.prefix() + "_second_addon.pbo";

    addons.join(second_addon_pbo_name).remove_file();
    addons.join(second_addon_pbo_name + "." + project.prefix() + "_" + project.version().to_string() + ".bisign").remove_file();
} else {
    warn("Cannot prepare workshop release. Folder " + release_folder + " does not exist!");
}
