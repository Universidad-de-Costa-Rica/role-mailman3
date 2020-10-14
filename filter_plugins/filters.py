# https://serverfault.com/a/991380
class FilterModule(object):
    def filters(self):
        return {'ini_dict_flatten': self.ini_dict_flatten}

    def ini_dict_flatten(self, arg):
        ret = []
        for section, subdict in arg.items():
            for key, value in subdict.items():
                ret.append(dict(section=section,
                                key=key,
                                value=value))
        return ret
